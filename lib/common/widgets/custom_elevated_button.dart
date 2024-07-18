import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/utils/coloors.dart';

class customElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;

  const customElevatedButton({
    Key? key,  required this.text,
    this.buttonWidth,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
