import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/text_judul.dart';
import 'package:gunung2/models/mountain_models.dart';
import 'package:gunung2/pages/my_detail_page.dart';

class HomeWebDisplay extends StatefulWidget {
  const HomeWebDisplay({super.key});

  @override
  State<HomeWebDisplay> createState() => _HomeWebDisplayState();
}

class _HomeWebDisplayState extends State<HomeWebDisplay> {
  List<MountainModels> mountain = [];

  void getMountain() {
    mountain = MountainModels.getMountainModels();
  }

  @override
  Widget build(BuildContext context) {
    getMountain();
    return Scaffold(
      body:Padding(
  padding: const EdgeInsets.all(20.0),
  child: Column(
    children: [
      CarouselDestinationSection(mountain: mountain),
      SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: mountain.length,
            itemBuilder: (BuildContext context, int index) {
              final mountainData = mountain[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyDetailPage(mountain: mountain, index: index)),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(mountainData.imgAssets),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Text(
                        mountainData.nameMountain,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  ),
)

    );
  }
}

class CarouselDestinationSection extends StatelessWidget {
  const CarouselDestinationSection({
    super.key,
    required this.mountain,
  });

  final List<MountainModels> mountain;

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(e.imgAssets),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e.nameMountain,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          const SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      e.location,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.height,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '${e.heigh}mdpl',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                ),
                              )
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
          options: CarouselOptions(
            height: 500,
          ),
        )
      ],
    );
  }
}
