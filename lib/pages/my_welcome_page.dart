import 'package:flutter/material.dart';
import 'package:gunung2/mobile/layout/welcome_mobile_display.dart';
import 'package:gunung2/web/layout/web_welcome_page.dart';

class MyWelcomePage extends StatelessWidget {
  const MyWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 1110) {
      return WebWelcomePage();
    } else {
      return WelcomeMobileDisplay();
    }
  }
}
