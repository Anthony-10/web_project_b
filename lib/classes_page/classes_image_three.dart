import 'package:flutter/material.dart';

import '../responsive.dart';

class ClassesImageThree extends StatefulWidget {
  const ClassesImageThree({super.key});

  @override
  State<ClassesImageThree> createState() => _ClassesImageThreeState();
}

class _ClassesImageThreeState extends State<ClassesImageThree> {

  bool isHover3 = false;

  Offset mousePos = const Offset(0, 0);


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover3 = true;

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
          isHover3 = false;
        });
      },
      child: Container(
        height: 450,
        width: 500,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: isHover3 ? 15 : 2,
              spreadRadius: isHover3 ? 5 : 2,
              color: Colors.grey.shade300)
        ]),
        child: Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutCubic,
                height: isHover3 ? 600 : 450,
                width: 500,
                child: Container(
                  width: 500,
                  height: 600,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image3.jpeg',
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
                          .withOpacity(isHover3 ? 1 : 0.6):Colors.white),
                  child: const Text(
                    'CROSSFIT - FEMALE ONLY',
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
                    Colors.black.withOpacity(isHover3 ? 0.8 : 0),
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
