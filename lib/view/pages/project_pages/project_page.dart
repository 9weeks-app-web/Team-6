import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';
import 'package:flutter_app/util/project/project_tab_list.dart';
import 'package:flutter_app/view/widgets/project_widgets/project_apply_widget.dart';
import 'package:flutter_app/view/widgets/project_widgets/tab_widget.dart';
import 'package:flutter_app/view/widgets/header_widget.dart';
import 'package:flutter_app/view/widgets/recruit_page_widgets/search_bar_widget.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          title: const HeaderWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // showModalBottomSheet(
            //   useSafeArea: true,
            //   isScrollControlled: true,
            //   context: context,
            //   builder: (context) => const ProjectApplyWidget(),
            // );
          },
          backgroundColor: const Color(0xFF0059FF),
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.only(
              //     left: 20,
              //     right: 20,
              //   ),
              //   child: HeaderWidget(),
              // ),
              const SizedBox(height: 18),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '프로젝트',
                      style: DesignTextStyle.HeadLine_Bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchBarWidget(),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
              Expanded(
                child: TabWidget(
                  tabContents: projectTabList,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
