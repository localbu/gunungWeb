
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/location_other.dart';
import 'package:gunung2/mobile/components/text_judul.dart';
import 'package:gunung2/models/mountain_models.dart';
import 'package:gunung2/pages/my_detail_page.dart';


class DestinationSection extends StatelessWidget {
  const DestinationSection({
    super.key,
    required this.mountain,
  });

  final List<MountainModels> mountain;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth < 800 ? screenWidth : 800; // adjust the width based on screen width

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextJudul(
          fontSize: 30,
          text: 'Destination',
          color: Colors.black,
        ),
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          items: mountain.map((entry) {
            MountainModels e = entry;
            int index =
                mountain.indexOf(e); // get the index of the current item
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MyDetailPage(mountain: mountain, index: index)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: cardWidth, // use the adjusted width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(e.imgAssets),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextJudul(
                            fontSize: 25,
                            text: e.nameMountain,
                            color: Colors.white,
                          ),
                          const SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LocationOther(
                                  icon: Icons.location_on, text: e.location),
                              SizedBox(
                                height: 10,
                              ),
                              LocationOther(
                                  icon: Icons.height, text: '${e.heigh}mdpl')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(height: 200),
        )
      ],
    );
  }
}