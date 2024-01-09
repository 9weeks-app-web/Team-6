import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_card_widget.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_filter.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(left: 0, right: 4),
                title: Text(
                  'HOT 프로젝트',
                  style: DesignTextStyle.SubTitle_Bold,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    '1/10',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: ProjectCardWidget(
                        isRecruiting: true,
                        imagePath: 'assets/images/project/dog.png',
                        projectName: '강아지 산책 앱 서비스 팀원 모집',
                        width: CardWidth.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: ProjectCardWidget(
                        isRecruiting: false,
                        imagePath: 'assets/images/project/human.png',
                        projectName: '콘텐츠 기반 공연예술 큐레이션 플랫폼',
                        width: CardWidth.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Divider(
          thickness: 10,
          color: Color(0xFFF3F3F3),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/project/banner.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(height: 40),
        ProjectFilter(),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: ProjectCardWidget(
              isRecruiting: true,
              imagePath: 'assets/images/project/dog.png',
              projectName: '콘텐츠 기반 공연예술 큐레이션 플랫폼',
              width: CardWidth.w300,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: ProjectCardWidget(
              isRecruiting: false,
              imagePath: 'assets/images/project/human.png',
              projectName: '콘텐츠 기반 공연예술 큐레이션 플랫폼',
              width: CardWidth.w300,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
