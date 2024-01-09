import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/project_widgets/chip_widget.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_info.dart';
import 'package:go_router/go_router.dart';

enum CardWidth {
  wMax,
  w300,
}

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.width,
    required this.projectName,
    required this.imagePath,
    required this.isRecruiting,
  });

  final CardWidth width;
  final String projectName;
  final String imagePath;
  final bool isRecruiting;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/project/detail');
      },
      child: Container(
        width:
            width == CardWidth.wMax ? MediaQuery.of(context).size.width : 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: DesignColor.Neutral.shade20,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: width == CardWidth.wMax
                  ? MediaQuery.of(context).size.width
                  : 300,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecruitingChip(
                      isRecruiting: isRecruiting,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      projectName,
                      style: width == CardWidth.wMax
                          ? DesignTextStyle(
                                  style: DesignStyle.SubTitle_SemiBold,
                                  color: DesignColor.Neutral)
                              .textStyle
                          : DesignTextStyle(
                                  style: DesignStyle.Body_SemiBold,
                                  color: DesignColor.Neutral)
                              .textStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 18),
                    const Row(
                      children: [
                        RoleChip(
                          label: '개발자 1/3',
                          color: Color(0xFFD3E5EF),
                        ),
                        SizedBox(width: 8),
                        RoleChip(
                          label: '백엔드 1/2',
                          color: Color(0xFFF4E0E9),
                        ),
                        SizedBox(width: 8),
                        RoleChip(
                          label: '기획자 1/2',
                          color: Color(0xFFFDECC8),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      children: [
                        RoleChip(
                          label: '디자이너 3/4',
                          color: Color(0xFFDBEDDB),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const InfoProject(
                      viewCount: 32,
                      commentCount: 12,
                      likeCount: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
