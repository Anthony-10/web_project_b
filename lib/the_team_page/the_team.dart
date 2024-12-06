import 'dart:math';

import 'package:flutter/material.dart';
import 'package:web_project_b/responsive.dart';
import 'package:web_project_b/the_team_page/the_team_one.dart';
import 'package:web_project_b/the_team_page/the_team_three.dart';
import 'package:web_project_b/the_team_page/the_team_two.dart';

import '../models/our_team.dart';

final List<OurTeam> ourTeam = [
  OurTeam(
    iconPath: 'assets/images/image1.jpg',
    text: 'Cardio',
  ),
  OurTeam(
    iconPath: 'assets/images/image2.jpg',
    text: 'Aerobics',
  ),
  OurTeam(
    iconPath: 'assets/images/image3.jpeg',
    text: 'Zumba',
  ),
];

class TheTeam extends StatefulWidget {
  const TheTeam({super.key});

  @override
  State<TheTeam> createState() => _TheTeamState();
}

class _TheTeamState extends State<TheTeam> {
  double end = 0.0;

  double begin = 0.0;

  double detailPageBegin = -pi / 2;

  double detailPageEnd = -pi / 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "MEET THE TEAM",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        if (Responsive.isMobile(context))
          const Text(
            '02',
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
        if (!Responsive.isMobile(context))
          const SizedBox(
            height: 30,
          ),
        const Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            TheTeamOne(),
            TheTeamTwo(),
            TheTeamThree()
              ]
        ),

        /*const GalleryPage()*/
      ],
    );
  }
}
