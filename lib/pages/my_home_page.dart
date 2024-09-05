import 'package:flutter/material.dart';
import 'package:gunung2/mobile/layout/home_mobile_display.dart';
import 'package:gunung2/web/layout/home_web_display.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 1110) {
      return HomeWebDisplay();
    } else {
      return HomeMobileDisplay();
    }
  }
}
