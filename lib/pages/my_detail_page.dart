import 'package:flutter/material.dart';
import 'package:gunung2/models/mountain_models.dart';
import 'package:gunung2/web/layout/detail_web_display.dart';

class MyDetailPage extends StatelessWidget {
  final List<MountainModels> mountain;
  final int index;
  const MyDetailPage({super.key, required this.mountain, required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailWebDisplay(mountain: mountain, index: index),
    );
  }
}
