import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../responsive.dart';

class TheTeamTwo extends StatefulWidget {
  const TheTeamTwo({super.key});

  @override
  State<TheTeamTwo> createState() => _TheTeamTwoState();
}

class _TheTeamTwoState extends State<TheTeamTwo> {

  double end2 = 0.0;

  double begin2 = 0.0;

  double detailPageBegin2 = -pi / 2;

  double detailPageEnd2 = -pi / 2;

  bool clicked = false;

  void sTimer (){
    Timer(const Duration(seconds: 4), () => setState(() {
      clicked = false;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return (!Responsive.isMobile(context))?
      MouseRegion(
      onEnter: (image) {
        setState(() {
          begin2 = 0.0;
          end2 = pi / 2;
          detailPageBegin2 = -pi / 2;
          detailPageEnd2 = 0.0;
        });
      },
      onExit: (image) {
        setState(() {
          begin2 = pi / 2;
          end2 = 0.0;
          detailPageEnd2 = 0.0;
          detailPageBegin2 = -pi / 2;
        });
      },
      child: Stack(
        children: [
          TweenAnimationBuilder(
            duration: const Duration(milliseconds: 675),
            tween: Tween(
                begin: detailPageBegin2, end: detailPageEnd2),
            curve: Curves.easeOut,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 275),
              color: begin2 == 0.0 ? Colors.yellowAccent : Colors.black,
              height: 350,
              width: 300,
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..translate(0.0, 0.0, -50.0),

                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(20.0),
                  height: 300.0,
                  width: 250.0,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ELOIS BANKS',
                          style: TextStyle(
                              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold)),
                      Divider(color: Colors.black,),
                      Text("Coach")
                    ],
                  ),
                ),
              ),
            ),
            builder: (BuildContext context, double value,
                Widget? child) {
              return Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateX(value),
                alignment: FractionalOffset.topCenter,
                child: child,
              );
            },
          ),
          TweenAnimationBuilder(
            duration: const Duration(milliseconds: 475),
            tween: Tween(begin: begin2, end: end2),
            curve: Curves.easeOut,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 375),
              opacity: end2 == 0.0 ? 1.0 : 0.0,
              child: SizedBox(
                  height: 350,
                  width: 300,
                  child: Image.asset(
                    'assets/images/trainer2.jpg',
                    fit: BoxFit.fitHeight,
                  )),
            ),
            builder: (BuildContext context, double value,
                Widget? child) {
              return Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateX(value),
                alignment: FractionalOffset.topCenter,
                child: child,
              );
            },
          ),
          /*Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60,
                      width: 300,
                      color: Colors.black54,
                      child: Center(
                        child: Text(
                          image.text,
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  )*/
        ],
      ),
    ):
        GestureDetector(
          onTap: (){
            setState(() {
              clicked = true;
              sTimer();
            });
          },
          child: clicked? Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            height: 300.0,
            width: 250.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ELOIS BANKS',
                    style: TextStyle(
                        fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                Divider(color: Colors.white,),
                Text("Coach",style: TextStyle(color: Colors.white,))
              ],
            ),
          ):
          SizedBox(
              height: 350,
              width: 300,
              child: Image.asset(
                'assets/images/trainer2.jpg',
                fit: BoxFit.fitHeight,
              ))
        );
  }
}
