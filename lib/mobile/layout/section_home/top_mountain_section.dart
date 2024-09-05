// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/my_button.dart';
import 'package:gunung2/mobile/components/text_judul.dart';
import 'package:gunung2/models/mountain_models.dart';
import 'package:gunung2/pages/my_detail_page.dart';


class TopMountainSection extends StatelessWidget {
  const TopMountainSection({
    super.key,
    required this.mountain,
  });

  final List < MountainModels > mountain;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextJudul(
          fontSize: 30,
          text: 'Top Mountain',
          color: Colors.black),

        SizedBox(
          height: 20
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10, );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(mountain[index].imgAssets),
                      fit: BoxFit.cover)
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: TextJudul(fontSize: 16, text: mountain[index].nameMountain, color: Colors.white, )
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                mountain[index].description,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: MyButton(onTap: () =>
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                    MyDetailPage(mountain: mountain, index: index, ))), child: Icon(Icons.arrow_forward, color: Colors.black, ), warna: Colors.white, )
                            )
                          ],
                        ),
                    ),
                  ),
                );
              },
            ),
        )
      ],
    );
  }
}