import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/extension/custom_theme_extension.dart';
import 'package:mywhatsapp/common/utils/coloors.dart';

class PrivacyAndTerms extends StatefulWidget {
  const PrivacyAndTerms({Key? key}) : super(key: key);

  @override
  State<PrivacyAndTerms> createState() => _PrivacyAndTermsState();
}

class _PrivacyAndTermsState extends State<PrivacyAndTerms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Read our",
          style: TextStyle(
            height: 1.5,
            color:context.theme.greyColor,
          ),
          children: [
            TextSpan(
              text: "Privacy Policy. ",
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            ),
            TextSpan(
              text:
              "Tap 'agree and continue' to accept the ",
              style: TextStyle(
                  color: context.theme.greyColor,
              ),
            ),
            TextSpan(
              text: "Terms of services",
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
