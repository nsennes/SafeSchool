import 'package:flutter/material.dart';
import 'package:safeschool/Utilities/colors_use.dart';
import 'package:safeschool/Utilities/text_use.dart';
import 'package:safeschool/components/text_form_fields.dart';
import 'package:safeschool/components/date_form_fields.dart';
import 'package:safeschool/components/long_text_form_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController gradeController = TextEditingController();
  final TextEditingController longTextController = TextEditingController();
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
          onSurface: ColorsUse.backgroundColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorsUse.primaryColor,
        ),
        fontFamily: "Rubik",
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SafeSchool'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    description: 'Email Address',
                    placeholder: 'Enter your email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    descriptionColor: ColorsUse.accentColor,
                    descriptionTextStyle: TextUse.heading_1(),
                    inputTextStyle: TextUse.body().copyWith(color: ColorsUse.accentColor),
                  ),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    description: 'Password',
                    placeholder: 'Enter your password',
                    controller: passwordController,
                    isPassword: true,
                    descriptionColor: ColorsUse.accentColor,
                    descriptionTextStyle: TextUse.heading_1(),
                    inputTextStyle: TextUse.body().copyWith(color: ColorsUse.accentColor),
                  ),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    description: 'Confirm Password',
                    placeholder: 'Enter your password',
                    controller: confirmPasswordController,
                    isPassword: true,
                    descriptionColor: ColorsUse.accentColor,
                    descriptionTextStyle: TextUse.heading_1(),
                    inputTextStyle: TextUse.body().copyWith(color: ColorsUse.accentColor),
                  ),
                  const SizedBox(height: 5),
                  CustomDateFormField(
                    description: 'Date of Incident',
                    placeholder: 'dd/mm/yyyy',
                    controller: dateController,
                    descriptionTextStyle: TextUse.heading_1().copyWith(color: ColorsUse.accentColor),
                  ),
                  const SizedBox(height: 5),
                  CustomTextFormField(
                    description: "Grade Level",
                    placeholder: "Select Your Grade Level",
                    controller: gradeController,
                    descriptionTextStyle: TextUse.heading_1().copyWith(color: ColorsUse.accentColor),
                    dropdownItems: const [
                      'Grade 1',
                      'Grade 2',
                      'Grade 3',
                      'Grade 4',
                      'Grade 5',
                      'Grade 6',
                      'Grade 7',
                      'Grade 8',
                      'Grade 9',
                      'Grade 10',
                      'Grade 11',
                      'Grade 12'
                    ],
                  ),
                  const SizedBox(height: 5),
                  CustomLongTextFormField(
                    description: 'Tell us what happened?',
                    placeholder: 'Tell Us What Happened. The More Details You Provide, The Better We Can Help.',
                    controller: longTextController,
                    descriptionTextStyle: TextUse.heading_1().copyWith(color: ColorsUse.accentColor),
                    inputTextStyle: TextUse.body().copyWith(color: ColorsUse.accentColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
