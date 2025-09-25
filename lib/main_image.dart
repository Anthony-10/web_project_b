import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:web_project_b/responsive.dart';

import 'constants.dart';
import 'controller.dart';

class MainImage extends StatefulWidget {
  const MainImage({super.key});

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  late VideoPlayerController videoPlayerController;

  var image = "assets/videos/mainVideo1.mp4";

  final controller = Get.put(Controller());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playVideo();
  }

  void _playVideo() {
    videoPlayerController = VideoPlayerController.asset(image)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => videoPlayerController.play());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _playVideo();
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return (!Responsive.isMobile(context))
        ? Container(
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
                        Column(
                      children: [
                        DefaultTextStyle(
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 55),
                            child: AnimatedTextKit(
                                totalRepeatCount: 1,
                                animatedTexts: [
                                  TypewriterAnimatedText("THE ONLY\n"
                                      "IMPOSSIBLE\n"
                                      "JOURNEY IS\n"
                                      "THE ONE YOU\n"
                                      "NEVER BEGIN\n")
                                ])),
                        ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: controller.color,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding * 1.5,
                                    vertical: kDefaultPadding)),
                            child: const Text("JOIN TODAY",
                                style: TextStyle(color: Colors.black))),
                      ],
                    ))),
          )
        : Image.asset('assets/images/mainImagePhone.png',fit: BoxFit.fill);


  }
}
