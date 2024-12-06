import 'package:flutter/material.dart';

import 'constants.dart';
import 'models/gallary.dart';

final List<Gallery> gallery = [
  Gallery(
    iconPath: 'assets/images/image1.jpg',
    text: 'Cardio',
  ),
  Gallery(
    iconPath: 'assets/images/Aerobics.jpg',
    text: 'Aerobics',
  ),
  Gallery(
    iconPath: 'assets/images/zumba2.jpg',
    text: 'Zumba',
  ),
  Gallery(
    iconPath: 'assets/images/aerobics.jpg',
    text: 'Aerobics',
  ),
  Gallery(
    iconPath: 'assets/images/strenth training.jpg',
    text: 'Strength Training',
  ),
  Gallery(
    iconPath: 'assets/images/aerobics1.jpg',
    text: 'Aerobics',
  ),
  Gallery(
    iconPath: 'assets/images/strength training.jpg',
    text: 'Strength Training',
  ),
  Gallery(
    iconPath: 'assets/images/zumba.jpg',
    text: 'Zumba',
  ),
  Gallery(
    iconPath: 'assets/images/strenth training1.jpg',
    text: 'Strength Training',
  ),
  Gallery(
    iconPath: 'assets/images/zumba1.jpg',
    text: 'Zumba',
  ),
];

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 20, bottom: 70, right: 20),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "OUR CLASSES",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
          const Text(
            "Gym Photos",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 3,
            width: 50,
            color: kSecondColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: gallery
                .map(
                  (image) => SizedBox(
                      height: 300,
                      width: 300,
                      child: Stack(
                        children: [
                          AnimatedContainer(
                              duration: const Duration(milliseconds: 1000),
                              height: 350,
                              width: 300,
                              curve: Curves.easeOutCubic,
                              child: SizedBox(
                                height: 300,
                                width: 300,
                                child: Image.asset(
                                  image.iconPath,
                                  fit: BoxFit.fitHeight,
                                ),
                              )),
                          Align(
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
                          )
                        ],
                      )),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
