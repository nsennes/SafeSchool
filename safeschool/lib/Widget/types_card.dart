import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';

class TypesCard extends StatelessWidget {
  final String title;
  final String img;
  const TypesCard({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(color: ColorsUse.secondaryColor),
    );
  }
}
