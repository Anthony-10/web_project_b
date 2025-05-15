import 'package:flutter/material.dart';
import 'package:web_project_b/portfolio_status.dart';
import 'package:web_project_b/responsive.dart';
import 'package:web_project_b/the_team_page/the_team.dart';

import 'about_us.dart';
import 'classes_page/classes_page.dart';
import 'contact_us.dart';
import 'footers.dart';
import 'main_image.dart';
import 'membership.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: (Responsive.isMobile(context)) ? 5 : 70,
                  right: (Responsive.isMobile(context)) ? 5 : 70),
              child: Column(
                children: [

                  MainImage(),
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
