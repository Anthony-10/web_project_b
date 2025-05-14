import 'package:flutter/material.dart';

import '../responsive.dart';

class Footers extends StatelessWidget {
  const Footers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.yellowAccent,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 50, top: 30, bottom: 30, right: 50),
            child: Flex(
              direction:
                  Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: Responsive.isMobile(context)
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Copyright (c) 2023  Anthony.  All rights Reserved",
                  style: TextStyle(
                      fontWeight: FontWeight.w600
                   /* color: Color.black,*/
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontWeight: FontWeight.w600
                           /* color: kTextColor,*/
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: const Text(
                        "|",
                        style: TextStyle(
                            fontWeight: FontWeight.w700
                          /*color: kTextColor,*/
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            /*color: kTextColor,*/
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
