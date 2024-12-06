import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/status.dart';

final List<Status> status = [
  Status(count: "45", text: "DIFFERENT\nMODULES"),
  Status(count: "60", text: "MINUTES\nPER CLASS"),
  Status(count: "20", text: "CLASSES\nPER WEEK"),
  Status(count: "1", text: "UNITED\nGOAL"),
];

class PortfolioStatus extends StatefulWidget {
  const PortfolioStatus({super.key});

  @override
  State<PortfolioStatus> createState() => _PortfolioStatusState();
}

class _PortfolioStatusState extends State<PortfolioStatus> {
  var widths = 300.0;
  var heights = 300.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.yellowAccent,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 70, right: 70,bottom:20),
        child: Center(
          child: Wrap(children: status
                              .map(
                                (e) => SizedBox(
                                  width: widths,
                                  height: heights * .3,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        e.count,
                                        style: GoogleFonts.oswald(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 50.0,

                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        e.text,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                              .toList()),
        ),
      ),
    );
  }
}
