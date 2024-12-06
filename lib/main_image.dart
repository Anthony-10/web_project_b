import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_project_b/responsive.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return (!Responsive.isMobile(context))
        ? Stack(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mainImage1.jpg'),
                      fit: BoxFit.fill),
                ),
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Colors.black87, Colors.black12])),
                    child: Align(
                        alignment: const Alignment(-0.8, 0.1),
                        child:
                            /*Text(
                      "THE ONLY\n"
                      "IMPOSSIBLE\n"
                      "JOURNEY IS\n"
                      "THE ONE YOU\n"
                      "NEVER BEGIN\n",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 55))*/
                            DefaultTextStyle(
                                style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 55),
                                child: AnimatedTextKit(animatedTexts: [
                                  TypewriterAnimatedText("THE ONLY\n"
                                      "IMPOSSIBLE\n"
                                      "JOURNEY IS\n"
                                      "THE ONE YOU\n"
                                      "NEVER BEGIN\n")
                                ])))),
              ),
            ],
          )
        : Image.asset('assets/images/mainImagePhone.png',
            width: double.infinity);
  }
}
