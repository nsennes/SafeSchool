import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';
import 'package:safeschool/Utilities/text_use.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: Container(
          height: 200,
          width: 370,
          decoration: BoxDecoration(
            color: ColorsUse.secondaryColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: -2,
                blurRadius: 6,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 12, bottom: 20),
                child: SizedBox(
                  height: 150,
                  width: 130,
                  child: Image.asset("assets/images/article_1.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      "What is Bullying?",
                      style: TextUse.heading_2().merge(
                          const TextStyle(color: ColorsUse.primaryColor)),
                    ),
                    Text(
                      "StopBullying.gov",
                      style: TextUse.heading_3().merge(const TextStyle(
                          fontSize: 12, color: ColorsUse.accentColor)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
