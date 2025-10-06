import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'responsive.dart';
import 'title_bar.dart';

class AboutUsPage extends StatelessWidget {
   AboutUsPage({super.key});

  final controllers = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Responsive.isMobile(context) ? AppBar(
        backgroundColor: Colors.black,
      ) : null,
      drawer: Responsive.isMobile(context)
          ? Drawer(
        child: Obx(
              () => ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              ...List.generate(controllers.titleList.length, (index) {
                final item = controllers.titleList[index];
                final icon = controllers.icons[index];
                final isSelected =
                    controllers.selectedSection.value == item;

                return ListTile(
                  leading: Icon(
                    icon,
                    color: isSelected
                        ? Colors.deepOrangeAccent
                        : Colors.black,
                  ),
                  title: Text(
                    item,
                    style: TextStyle(
                      fontSize: 15,
                      color: isSelected
                          ? Colors.deepOrangeAccent
                          : Colors.black,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  selected: isSelected,
                  selectedTileColor:
                  Colors.deepOrangeAccent.withOpacity(0.1),
                  onTap: () {
                    Navigator.pop(context); // close drawer
                    controllers.handleNavigation(
                      item,
                    ); // custom scroll/navigation logic
                  },
                );
              }),
            ],
          ),
        ),
      )
          : null,
      body: Column(
        children: [
          if (!Responsive.isMobile(context)) TitleBar(),
          Image.asset('assets/images/image1.jpg',height: 500,width: double.infinity,)
        ],
      ),
    );
  }
}
