import 'package:flutter/material.dart';

import '../responsive.dart';

class ClassesImageTwo extends StatefulWidget {
  const ClassesImageTwo({super.key});

  @override
  State<ClassesImageTwo> createState() => _ClassesImageTwoState();
}

class _ClassesImageTwoState extends State<ClassesImageTwo> {

  bool isHover2 = false;

  Offset mousePos = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover2 = true;

        });
      },
      onHover: (e) {
        setState(() {
          mousePos += e.delta;
          mousePos *= 0.12;
        });
      },
      onExit: (e) {
        setState(() {
          isHover2 = false;
        });
      },
      child: Container(
        height: 450,
        width: 500,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: isHover2 ? 15 : 2,
              spreadRadius: isHover2 ? 5 : 2,
              color: Colors.grey.shade300)
        ]),
        child: Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutCubic,
                height: isHover2 ? 600 : 450,
                width: 500,
                child: Container(
                  width: 500,
                  height: 600,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image7.jpg',
                          ),
                          fit: BoxFit.fitHeight)),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 1000),
                  style: TextStyle(
                      fontSize: 25,
                      color: (!Responsive.isMobile(context))?Colors.white
                          .withOpacity(isHover2 ? 1 : 0.6):Colors.white),
                  child: const Text(
                    'CROSSFIT - GYMNASTICS',
                    style: TextStyle(
                      color: Colors.white,),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(isHover2 ? 0.8 : 0),
                    Colors.transparent
                  ])),
              child: const SizedBox(
                width: 500,
                height: 600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
