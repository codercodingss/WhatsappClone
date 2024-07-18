import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/extension/custom_theme_extension.dart';
import 'package:mywhatsapp/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langbtnbackgroundcolor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langbtnHighlightcolor,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: Coloors.purpleDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text("English",
                style: TextStyle(
                  color: Coloors.purpleDark,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Coloors.purpleDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
