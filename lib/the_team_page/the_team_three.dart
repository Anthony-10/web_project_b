import 'dart:math';
import 'dart:async';

import 'package:flutter/material.dart';

import '../responsive.dart';

class TheTeamThree extends StatefulWidget {
  const TheTeamThree({super.key});

  @override
  State<TheTeamThree> createState() => _TheTeamThreeState();
}

class _TheTeamThreeState extends State<TheTeamThree> {

  double end3 = 0.0;

  double begin3 = 0.0;

  double detailPageBegin3 = -pi / 2;

  double detailPageEnd3 = -pi / 2;

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
          begin3 = 0.0;
          end3 = pi / 2;
          detailPageBegin3 = -pi / 2;
          detailPageEnd3 = 0.0;
        });
      },
      onExit: (image) {
        setState(() {
          begin3 = pi / 2;
          end3 = 0.0;
          detailPageEnd3 = 0.0;
          detailPageBegin3 = -pi / 2;
        });
      },
      child: Stack(
        children: [
          TweenAnimationBuilder(
            duration: const Duration(milliseconds: 675),
            tween: Tween(
                begin: detailPageBegin3, end: detailPageEnd3),
            curve: Curves.easeOut,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 275),
              color: begin3 == 0.0 ? Colors.yellowAccent : Colors.black,
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
                      Text('SIMONE WALTERS',
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
            tween: Tween(begin: begin3, end: end3),
            curve: Curves.easeOut,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 375),
              opacity: end3 == 0.0 ? 1.0 : 0.0,
              child: SizedBox(
                  height: 350,
                  width: 300,
                  child: Image.asset(
                    'assets/images/trainer3.jpg',
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
              Text("SIMONE WALTERS",
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
              'assets/images/trainer3.jpg',
              fit: BoxFit.fitHeight,
            ))
    );
  }
}
