import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});

  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  final controllers = Get.put(Controller());

  int? _hoveredIndex;
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.only(top: 10, left: 20, right: 15, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/image2.jpg',height: 60,width: 60,),
          Wrap(
            spacing: 30,
            children: List.generate(controllers.titleList.length, (index) {
              final item = controllers.titleList[index];
              final isHovered = _hoveredIndex == index;
              final isSelected = _selectedIndex == index;
              final bool isActive = isHovered || isSelected;

              return MouseRegion(
                onEnter: (_) => setState(() => _hoveredIndex = index),
                onExit: (_) => setState(() => _hoveredIndex = null),
                child: GestureDetector(
                  onTap: () => setState(() => _selectedIndex = index),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedDefaultTextStyle(
                        duration: Duration(milliseconds: 300),
                        style: TextStyle(
                          fontSize: 15,
                          color: isActive ? Colors.deepOrange : Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        child: Text(item),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(top: 8), // <-- increased spacing
                        height: 2,
                        width: isActive ? 30 : 0,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {

                  // TODO: Add your onPressed logic here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.yellow.shade300; // Hover background
                    } else if (states.contains(MaterialState.pressed)) {
                      return Colors.yellow.shade300; // Pressed background
                    }
                    return Colors.yellow.shade400; // Default background
                  }),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                  overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.1)), // Ripple effect
                  elevation: MaterialStateProperty.resolveWith<double>((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return 2;
                    }
                    return 6; // Default elevation
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                  ),
                ),
                child: const Text(
                  "Pricing",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 20,),
              ElevatedButton(
                onPressed: () {

                  // TODO: Add your onPressed logic here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                    if (states.contains(MaterialState.hovered)) {
                      return  Colors.yellow.shade300; // Hover background
                    } else if (states.contains(MaterialState.pressed)) {
                      return  Colors.yellow.shade300; // Pressed background
                    }
                    return Colors.yellow.shade400; // Default background
                  }),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Text color
                  overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.1)), // Ripple effect
                  elevation: MaterialStateProperty.resolveWith<double>((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return 2;
                    }
                    return 6; // Default elevation
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                  ),
                ),
                child: const Text(
                  "Schedule",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
