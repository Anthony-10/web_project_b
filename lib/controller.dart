import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Controller extends GetxController {
  var assetsImage = [
    "assets/videos/cardio.mp4",
    "assets/videos/strengthTraining.mp4",
    "assets/videos/zumba.mp4"
  ].obs;

  var color = Colors.yellow[400];

  var price15 = 0.obs;
  var price = 0;

  var number1 = 1;
  var number2 = 2;
  var number3 = 3;
  var number4 = 4;
  var number5 = 5;
  var number6 = 6;

  int firstPrice = 15000;
  int secondPrice = 30000;
  int thirdPrice = 50000;

  var pixels = 0.0.obs;

  var memberDetails = "";

  AssetImage assetImage = const AssetImage("assets/images/header_image3.jpg");
  AssetImage assetImage1 = const AssetImage("assets/images/header_image2.jpg");

  final itemKey = GlobalKey();
  Future<void> launchTwitter({var urls}) async {
    final url = Uri.parse(urls);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Cant launch";
    }
  }
}
