import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';
import 'package:safeschool/pages/home.dart';
import 'package:safeschool/pages/home_page.dart';
import 'package:safeschool/components/buttons.dart';
import 'package:safeschool/components/popup_buttons.dart';
import 'package:safeschool/registrations/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeSchool',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsUse.primaryColor,
            brightness: Brightness.light,
            primary: ColorsUse.primaryColor,
            onPrimary: ColorsUse.secondaryColor,
            secondary: ColorsUse.secondaryColor,
            onSecondary: ColorsUse.accentColor,
            onSurface: ColorsUse.backgroundColor),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorsUse.primaryColor,
        ),
        fontFamily: ("Rubik"),
      ),

      home: FirstPage(),
      );


  }
}
