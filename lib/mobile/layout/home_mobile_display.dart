// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gunung2/mobile/layout/section_home/destination_section.dart';
import 'package:gunung2/mobile/layout/section_home/top_mountain_section.dart';
import 'package:gunung2/models/mountain_models.dart';

class HomeMobileDisplay extends StatefulWidget {
  const HomeMobileDisplay({
    super.key
  });

  @override
  State < HomeMobileDisplay > createState() => _HomeMobileDisplayState();
}

class _HomeMobileDisplayState extends State < HomeMobileDisplay > {
  List < MountainModels > mountain = [];

  void getMountain() {
    mountain = MountainModels.getMountainModels();
  }

  @override
  Widget build(BuildContext context) {
    getMountain();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: null,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          DestinationSection(mountain: mountain),
          SizedBox(
            height: 30,
          ),
          TopMountainSection(mountain: mountain)

        ],
      ),
    );
  }
}
