import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/utils/coloors.dart';
import 'package:mywhatsapp/feature/welcome/widgets/privacy_and_terms.dart';
import 'package:mywhatsapp/common/widgets/custom_elevated_button.dart';
import 'package:mywhatsapp/feature/welcome/widgets/language_button.dart';
import 'package:mywhatsapp/common/extension/custom_theme_extension.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/circle.png",
                    color: context.theme.circleImageColor,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Welcome to Whatsapp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    PrivacyAndTerms(),
                    customElevatedButton(onPressed: (){} , text: "AGREE AND CONTINUE", ),
                    SizedBox(
                      height: 50,
                    ),
                    LanguageButton(),
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

