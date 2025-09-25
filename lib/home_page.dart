import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_project_b/portfolio_status.dart';
import 'package:web_project_b/responsive.dart';
import 'package:web_project_b/the_team_page/the_team.dart';
import 'package:web_project_b/title_bar.dart';

import 'about_us.dart';
import 'classes_page/classes_page.dart';
import 'contact_us.dart';
import 'controller.dart';
import 'footers.dart';
import 'main_image.dart';
import 'membership.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final controllers = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Responsive.isMobile(context) ? AppBar(
        backgroundColor: Colors.black,
      ) : null,
      drawer: Responsive.isMobile(context)
          ? Drawer(
              child: Obx(
                () => ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Menu',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                    ...List.generate(controllers.titleList.length, (index) {
                      final item = controllers.titleList[index];
                      final icon = controllers.icons[index];
                      final isSelected =
                          controllers.selectedSection.value == item;

                      return ListTile(
                        leading: Icon(
                          icon,
                          color: isSelected
                              ? Colors.deepOrangeAccent
                              : Colors.black,
                        ),
                        title: Text(
                          item,
                          style: TextStyle(
                            fontSize: 15,
                            color: isSelected
                                ? Colors.deepOrangeAccent
                                : Colors.black,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        selected: isSelected,
                        selectedTileColor:
                            Colors.deepOrangeAccent.withOpacity(0.1),
                        onTap: () {
                          Navigator.pop(context); // close drawer
                          controllers.handleNavigation(
                            item,
                          ); // custom scroll/navigation logic
                        },
                      );
                    }),
                  ],
                ),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (!Responsive.isMobile(context)) TitleBar(),
            MainImage(),
            Padding(
              padding: EdgeInsets.only(
                  left: (Responsive.isMobile(context)) ? 5 : 70,
                  right: (Responsive.isMobile(context)) ? 5 : 70),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  AboutUs(),
                  SizedBox(height: 60),
                  TheTeam(),
                  SizedBox(height: 60),
                  ClassesPage(),
                  SizedBox(height: 60),
                ],
              ),
            ),
            const PortfolioStatus(),
            const Padding(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Membership(),
                  SizedBox(height: 60)
                ],
              ),
            ),
            ContactUs(),
            Footers(),
          ],
        ),
      ),
    );
  }
}
