import 'package:flutter/material.dart';
import 'package:mywhatsapp/common/theme/dark_theme.dart';
import 'package:mywhatsapp/common/theme/light_theme.dart';
import 'package:mywhatsapp/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Whatsapp Demo",
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
