import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';
import 'package:safeschool/Utilities/text_use.dart';

class Physical extends StatelessWidget {
  const Physical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 320,
                color: ColorsUse.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, top: 120),
                child: Text(
                  "Physical\nBullying",
                  style: TextUse.heading_1(),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 38),
            child: Container(
              child: Text("What is Physical Bullying?",
                  style: TextUse.heading_2()
                      .merge(TextStyle(color: ColorsUse.accentColor))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsUse.secondaryColor),
              child: Text(
                "Physical bullying is any unwanted physical contact that is intended to hurt, humiliate, or intimidate another person.  This can include actions like:",
                style: TextUse.body()
                    .merge(TextStyle(color: ColorsUse.accentColor)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
