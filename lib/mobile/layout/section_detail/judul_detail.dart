import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/location_other.dart';
import 'package:gunung2/mobile/components/text_judul.dart';
import 'package:gunung2/mobile/layout/mobile_detail_page.dart';
class JudulDetail extends StatelessWidget {
  const JudulDetail({
    super.key,
    required this.widget,
  });

  final MobileDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.mountain[widget.index].imgAssets),
                fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(0, 12),
                  blurRadius: 12)
            ]),
        child: Container(
          color: Colors.black.withOpacity(0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextJudul(
                  fontSize: 30,
                  text: widget.mountain[widget.index].nameMountain,
                  color: Colors.white),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  LocationOther(
                      icon: Icons.location_on,
                      text: widget.mountain[widget.index].location),
                  SizedBox(
                    height: 20,
                  ),
                  LocationOther(
                      icon: Icons.height,
                      text: '${widget.mountain[widget.index].heigh}mdpl')
                ],
              ),
            ],
          ),
        ));
  }
}
