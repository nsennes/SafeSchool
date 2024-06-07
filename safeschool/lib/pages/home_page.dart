import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GreetingSection(),
              SizedBox(height: 20),
              SubmitReportSection(),
              SizedBox(height: 20),
              BullyingTypesSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Report Incident',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }
}

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsUse.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hi There!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {
              // Logout logic here
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class SubmitReportSection extends StatelessWidget {
  const SubmitReportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsUse.accentColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How to submit a report?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1. Tap "Report Incident"\n'
            '2. Choose the type of bullying.\n'
            '3. Tell us what happened.\n'
            '4. (Optional) Add details (photos or screenshots).\n'
            '5. Review your report.\n'
            '6. Submit your report.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class BullyingTypesSection extends StatelessWidget {
  const BullyingTypesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Types of Bullying',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              BullyingTypeCard(
                image: 'assets/physical.png',
                title: 'Physical',
              ),
              BullyingTypeCard(
                image: 'assets/verbal.png',
                title: 'Verbal',
              ),
              // Add more cards as needed
            ],
          ),
        ),
      ],
    );
  }
}

class BullyingTypeCard extends StatelessWidget {
  final String image;
  final String title;

  const BullyingTypeCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 80,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
