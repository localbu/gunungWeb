import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/text_judul.dart';
import 'package:gunung2/mobile/layout/mobile_detail_page.dart';

class DeskripsiDetail extends StatelessWidget {
  const DeskripsiDetail({
    super.key,
    required this.widget,
  });

  final MobileDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextJudul(
            fontSize: 30, text: 'Description', color: Colors.black),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            widget.mountain[widget.index].explained,
            style: TextStyle(
                fontWeight: FontWeight.w300, color: Colors.black87),
          ),
        )
      ],
    );
  }
}
