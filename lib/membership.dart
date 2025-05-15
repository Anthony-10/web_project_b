import 'package:flutter/material.dart';
import 'package:web_project_b/responsive.dart';
import '../constants.dart';
import '../controller.dart';
import 'package:get/get.dart';

import 'models/membership.dart';

final List<Pricing> pricing1 = [
  Pricing(
      title: ""
          "Strength training",
      icon: Icons.check,
      color: Colors.white),
  Pricing(title: "Cardio", icon: Icons.check, color: Colors.white),
  Pricing(title: "Zumba", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Aerobic", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Karate", icon: Icons.clear, color: Colors.red),
];

final List<Pricing> pricing2 = [
  Pricing(title: "Strength training", icon: Icons.check, color: Colors.white),
  Pricing(title: "Cardio", icon: Icons.check, color: Colors.white),
  Pricing(title: "Zumba", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Aerobic", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Karate", icon: Icons.clear, color: Colors.red),
];

final List<Pricing> pricing3 = [
  Pricing(title: "Strength training", icon: Icons.check, color: Colors.white),
  Pricing(title: "Cardio", icon: Icons.check, color: Colors.white),
  Pricing(title: "Zumba", icon: Icons.check, color: Colors.white),
  Pricing(title: "Aerobic", icon: Icons.check, color: Colors.white),
  Pricing(title: "Karate", icon: Icons.check, color: Colors.white),
];

final List<Pricing> pricing4 = [
  Pricing(
      title: ""
          "Strength training",
      icon: Icons.clear,
      color: Colors.red),
  Pricing(title: "Cardio", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Zumba", icon: Icons.check, color: Colors.white),
  Pricing(title: "Aerobic", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Karate", icon: Icons.clear, color: Colors.red),
];
final List<Pricing> pricing5 = [
  Pricing(
      title: ""
          "Strength training",
      icon: Icons.clear,
      color: Colors.red),
  Pricing(title: "Cardio", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Zumba", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Aerobic", icon: Icons.check, color: Colors.white),
  Pricing(title: "Karate", icon: Icons.clear, color: Colors.red),
];

final List<Pricing> pricing6 = [
  Pricing(
      title: ""
          "Strength training",
      icon: Icons.clear,
      color: Colors.red),
  Pricing(title: "Cardio", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Zumba", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Aerobic", icon: Icons.clear, color: Colors.red),
  Pricing(title: "Karate", icon: Icons.check, color: Colors.white),
];

class Membership extends StatefulWidget {
  const Membership({super.key});

  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  var isClicked = "";
  var isHovered1 = false;
  var isHovered2 = false;
  var isHovered3 = false;
  var isHovered4 = false;
  var isHovered5 = false;
  var isHovered6 = false;

  void onEntered1(bool isHovered) => setState(() {
        isHovered1 = isHovered;
      });
  void onEntered2(bool isHovered) => setState(() {
        isHovered2 = isHovered;
      });
  void onEntered3(bool isHovered) => setState(() {
        isHovered3 = isHovered;
      });
  void onEntered4(bool isHovered) => setState(() {
        isHovered4 = isHovered;
      });
  void onEntered5(bool isHovered) => setState(() {
        isHovered5 = isHovered;
      });
  void onEntered6(bool isHovered) => setState(() {
        isHovered6 = isHovered;
      });

  final controller = Get.put(Controller());

  var textColors = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, bottom: 60),
      /*color: kBgColor,*/
      width: double.infinity,
      child: Column(children: [
        const Text(
          "Memberships",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        if (Responsive.isMobile(context))
          const Text(
            '04',
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),        const SizedBox(
          height: 30,
        ),
        /*Container(
          height: 3,
          width: 50,
          color: kSecondColor,
        ),
        const SizedBox(
          height: 30,
        ),*/
        _buildUi()
      ]),
    );
  }

  Widget _buildUi() {
    final hoveredTransform = Matrix4.identity()..scale(1.1);
    final transform1 = isHovered1 ? hoveredTransform : Matrix4.identity();
    final transform2 = isHovered2 ? hoveredTransform : Matrix4.identity();
    final transform3 = isHovered3 ? hoveredTransform : Matrix4.identity();
    final transform4 = isHovered4 ? hoveredTransform : Matrix4.identity();

    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
      child: Wrap(
        spacing: 40.0,
        runSpacing: 40.0,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                controller.price = controller.firstPrice;
                controller.memberDetails = "KSH 200 /day";
              });
              Get.toNamed("/RegisterMember");

              controller.price15.value = controller.number1;
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => onEntered1(true),
              onExit: (event) => onEntered1(false),
              child: Obx(
                () => AnimatedContainer(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  duration: const Duration(milliseconds: 200),
                  transform: transform1,
                  decoration: BoxDecoration(
                      color: controller.price15.value == 0
                          ? Colors.transparent
                          : controller.price15.value == 1
                              ? kPrimaryColor
                              : kBgColor,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white)),
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(Get.width * .02,
                        Get.height * .04, Get.width * .02, Get.height * .02),
                    child: Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "KSH ",
                                style: TextStyle(
                                    color: textColors, fontSize: 20.0),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "200",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0)),
                              TextSpan(
                                  text: "/day",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                            ])),
                        SizedBox(height: Get.height * .04),
                        Column(
                            children: pricing1
                                .map((e) => ListTile(
                                      leading: Icon(
                                        e.icon,
                                        color: e.color,
                                      ),
                                      title: Text(e.title,
                                          style: TextStyle(
                                              color: textColors)),
                                    ))
                                .toList()),
                        const SizedBox(height: 10),
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
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                controller.price = controller.secondPrice;
                controller.memberDetails = "KSH 1K /week";
              });
              Get.toNamed("/RegisterMember");
              controller.price15.value = controller.number2;
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => onEntered2(true),
              onExit: (event) => onEntered2(false),
              child: Obx(
                () => AnimatedContainer(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  duration: const Duration(milliseconds: 200),
                  transform: transform2,
                  decoration: BoxDecoration(
                      color: controller.price15.value == 0
                          ? Colors.transparent
                          : controller.price15.value == 2
                              ? kPrimaryColor
                              : kBgColor,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white)),
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(Get.width * .02,
                        Get.height * .04, Get.width * .02, Get.height * .02),
                    child: Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "KSH ",
                                style: TextStyle(
                                    color: textColors, fontSize: 20.0),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "1K",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0)),
                              TextSpan(
                                  text: "/week",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                            ])),
                        SizedBox(height: Get.height * .04),
                        Column(
                            children: pricing2
                                .map((e) => ListTile(
                                      leading: Icon(
                                        e.icon,
                                        color: e.color,
                                      ),
                                      title: Text(e.title,
                                          style: TextStyle(
                                              color: textColors)),
                                    ))
                                .toList()),
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
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                controller.price = controller.thirdPrice;
                controller.memberDetails = "KSH 3K /month";
              });
              Get.toNamed("/RegisterMember");
              controller.price15.value = controller.number3;
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => onEntered3(true),
              onExit: (event) => onEntered3(false),
              child: Obx(
                () => AnimatedContainer(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  duration: const Duration(milliseconds: 200),
                  transform: transform3,
                  decoration: BoxDecoration(
                      color: controller.price15.value == 0
                          ? Colors.transparent
                          : controller.price15.value == 3
                              ? kPrimaryColor
                              : kBgColor,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white)),
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(Get.width * .02,
                        Get.height * .04, Get.width * .02, Get.height * .02),
                    child: Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "KSH ",
                                style: TextStyle(
                                    color: textColors, fontSize: 20.0),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "3K",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0)),
                              TextSpan(
                                  text: "/month",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                            ])),
                        SizedBox(height: Get.height * .04),
                        Column(
                            children: pricing3
                                .map((e) => ListTile(
                                      leading: Icon(
                                        e.icon,
                                        color: e.color,
                                      ),
                                      title: Text(
                                        e.title,
                                        style: TextStyle(
                                            color: textColors),
                                      ),
                                    ))
                                .toList()),
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
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                controller.price = controller.thirdPrice;
                controller.memberDetails = "KSH 200 /day";
              });
              Get.toNamed("/RegisterMember");
              controller.price15.value = controller.number4;
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) => onEntered4(true),
              onExit: (event) => onEntered4(false),
              child: Obx(
                () => AnimatedContainer(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  duration: const Duration(milliseconds: 200),
                  transform: transform4,
                  decoration: BoxDecoration(
                      color: controller.price15.value == 0
                          ? Colors.transparent
                          : controller.price15.value == 4
                              ? kPrimaryColor
                              : kBgColor,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white)),
                  width: 220,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(Get.width * .02,
                        Get.height * .04, Get.width * .02, Get.height * .02),
                    child: Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "KSH ",
                                style: TextStyle(
                                    color: textColors, fontSize: 20.0),
                                children: <TextSpan>[
                              TextSpan(
                                  text: "200",
                                  style: TextStyle(
                                     color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0)),
                              TextSpan(
                                  text: "/day",
                                  style: TextStyle(
                                      color: textColors,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0)),
                            ])),
                        SizedBox(height: Get.height * .04),
                        Column(
                            children: pricing4
                                .map((e) => ListTile(
                                      leading: Icon(
                                        e.icon,
                                        color: e.color,
                                      ),
                                      title: Text(
                                        e.title,
                                        style: TextStyle(
                                            color: textColors),
                                      ),
                                    ))
                                .toList()),
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
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
