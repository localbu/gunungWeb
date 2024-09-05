import 'package:flutter/material.dart';
import 'package:gunung2/mobile/layout/mobile_detail_page.dart';
import 'package:gunung2/models/mountain_models.dart';
import 'package:gunung2/web/layout/detail_web_display.dart';
import 'package:gunung2/web/layout/home_web_display.dart';

class MyDetailPage extends StatelessWidget {
  final List<MountainModels> mountain;
  final int index;
  const MyDetailPage({super.key, required this.mountain, required this.index});
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 1110) {
      return DetailWebDisplay(mountain: mountain, index: index);
    } else {
      return MobileDetailPage(mountain: mountain, index: index);
    }
  }
}
