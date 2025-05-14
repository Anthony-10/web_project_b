import 'package:flutter/material.dart';
import 'package:web_project_b/classes_page/classes_image_one.dart';
import 'package:web_project_b/classes_page/classes_image_three.dart';
import 'package:web_project_b/classes_page/classes_image_two.dart';
import 'package:web_project_b/responsive.dart';

import '../models/classes.dart';

final List<Classes> classes = [
  Classes(
    iconPath: 'assets/images/image1.jpg',
    text: 'CROSSFIT - BEGINNERS CLASS',
  ),
  Classes(
    iconPath: 'assets/images/image2.jpg',
    text: 'CROSSFIT - GYMNASTICS',
  ),
  Classes(
    iconPath: 'assets/images/image3.jpeg',
    text: 'CROSSFIT - FEMALE ONLY',
  ),
];

class ClassesPage extends StatefulWidget {
  const ClassesPage({super.key});

  @override
  State<ClassesPage> createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("FEATURED CLASSES",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        if (Responsive.isMobile(context))
          const Text(
            '03',
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
            ClassesImageTwo(),
            ClassesImageThree(),
            ClassesImageOne(),
             ]
        ),
      ],
    );
  }
}
