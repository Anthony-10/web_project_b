import 'package:flutter/material.dart';
import 'package:web_project_b/responsive.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '01',
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  )),*/
        const Center(
            child: Text(
              'WHO WE ARE',
              style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
            )),
        if (Responsive.isMobile(context))
        const Text(
          '01',
          style: TextStyle(fontSize: 60, color: Colors.white),
        ),
        Row(
          children: [
            if (!Responsive.isMobile(context))
              Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/image3.jpeg',
                    height: 500,
                    width: 200,
                  )),
            const SizedBox(width: 30,),
            const Expanded(
              flex: 1,
              child: Text(
                  "At Journey London we believe Crossfitters come in all "
                      "shapes and sizes, we are all on a journey towards our own personal "
                      "best health and fitness levels. A journey that makes us better "
                      "as athletes, friends and people.\n\n"
                      "Our facility is unlike any other gym you’ve been to before. "
                      "We pride ourselves not only in providing world class CrossFit "
                      "training, but we also believe in creating a motivating and dynamic "
                      "environment. We are the community dedicated to your human evolution, "
                      "one workout at a time.\n\n"
                      "Come in for a free trial class! Lose some body fat, gain some friends, "
                      "and get fit for life!",
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    );
  }
}
