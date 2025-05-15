import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../controller.dart';
import 'models/contact_us.dart';

final List<Contacts> contacts = [
  Contacts(
    icon: Icons.location_on,
    title: "Kahawa",
    button: '',
  ),
  Contacts(
    icon: Icons.email,
    title: "hello@gymkenya.com",
    button: ''
        /*'mailto:amuthuki8@gmail.com?subject=Sells&body=This is mine\n this is yours'*/,
  ),
  Contacts(
    icon: Icons.phone,
    title: "WHATSAPP",
    button: '' /*'https://wa_me/0722378794'*/,
  )
];

class ContactUs extends StatelessWidget {
  ContactUs({
    super.key,
  });

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 50, top: 20,  right: 50),
      color: controller.color,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Quick Contacts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    /*color: kTextColor*/),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: contacts
                    .map(
                      (e) => ListTile(
                        leading: Icon(
                          e.icon,
                          color: kSecondColor,
                        ),
                        title: GestureDetector(
                          onTap: () {
                            controller.launchTwitter(urls: e.button);
                          },
                          child: Text(e.title,
                              style: const TextStyle(fontWeight: FontWeight.w600/*color: Colors.white*/)),
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
         /* const SizedBox(height: 10),*/
        ],
      ),
    );
  }
}
