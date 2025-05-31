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
  var image = "assets/videos/mainVideo1.mp4";

  late VideoPlayerController videoPlayerController;

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
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: VideoPlayer(
            videoPlayerController,
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.black45,
          ),
        ),
        (!Responsive.isMobile(context))
            ? Positioned(
                left: width * 0.10,
                bottom: height * 0.20,
                child: Column(
                  children: [
                    DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                      child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                        TypewriterAnimatedText("THE ONLY\n"
                            "IMPOSSIBLE\n"
                            "JOURNEY IS\n"
                            "THE ONE YOU\n"
                            "NEVER BEGIN\n")
                      ]),
                    ),

                    ElevatedButton(
                        onPressed: () {

                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: controller.color,
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding * 1.5,
                                vertical: kDefaultPadding)),
                        child: const Text("JOIN TODAY",style: TextStyle(
                            color: Colors.black))),
                  ],
                ),
              )
            : Column(
              children: [
                DefaultTextStyle(
                  style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                      TypewriterAnimatedText("THE ONLY\n"
                          "IMPOSSIBLE\n"
                          "JOURNEY IS\n"
                          "THE ONE YOU\n"
                          "NEVER BEGIN\n")
                    ]),
                ),

                ElevatedButton(
                    onPressed: () {

                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: controller.color,
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding)),
                    child: const Text("JOIN TODAY",style: TextStyle(
                        color: Colors.black))),
              ],
            ),
      ],
    );
  }
}
