import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';
import 'package:safeschool/pages/help.dart';
import 'package:safeschool/pages/home.dart';
import 'package:safeschool/pages/home_page.dart';
import 'package:safeschool/pages/report_incident.dart';
import 'package:safeschool/pages/resources.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int index = 0;
  final pages = [
    Home(),
    ReportIncident(),
    Resources(),
    Help(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
            labelTextStyle: WidgetStatePropertyAll(TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: ColorsUse.accentColor))),
        child: NavigationBar(
          height: 60,
          backgroundColor: ColorsUse.secondaryColor,
          selectedIndex: 0,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_rounded), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.add_circle), label: "Report Incident"),
            NavigationDestination(
                icon: Icon(Icons.file_copy_rounded), label: "Resources"),
            NavigationDestination(icon: Icon(Icons.help), label: "Help")
          ],
        ),
      ),
    );
  }
}
