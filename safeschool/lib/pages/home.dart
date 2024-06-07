import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safeschool/Utilities/colors_use.dart';
import 'package:safeschool/Utilities/text_use.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        // child: Container(
        //   height: 225,
        //   color: ColorsUse.primaryColor,
        // ),
        child: Stack(
          children: [
            Container(
              height: 225,
              decoration:
                  BoxDecoration(color: ColorsUse.primaryColor, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: -2,
                  blurRadius: 8,
                  offset: Offset(0, 10),
                )
              ]),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 95),
                  child: Container(
                    child: Text(
                      "Hi There!",
                      style: TextUse.heading_1().merge(
                          const TextStyle(color: ColorsUse.secondaryColor)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Container(
                    child: const Text(
                      "How can we help \nyou today?",
                      style: TextStyle(
                          fontSize: 16, color: ColorsUse.secondaryColor),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
