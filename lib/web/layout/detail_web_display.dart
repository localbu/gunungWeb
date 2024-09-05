import 'package:flutter/material.dart';
import 'package:gunung2/models/mountain_models.dart';

class DetailWebDisplay extends StatelessWidget {
  const DetailWebDisplay({
    super.key,
    required this.mountain,
    required this.index,
  });

  final List<MountainModels> mountain;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(mountain[index].imgAssets),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(5, 10),
                      )
                    ]),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white.withOpacity(0.7),
                              size: 50,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              mountain[index].nameMountain,
                              style: TextStyle(
                                  fontSize: 90,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      mountain[index].location,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Colors.white.withOpacity(0.6)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.height,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '${mountain[index].heigh}MDPL',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Colors.white.withOpacity(0.6)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white.withOpacity(0.9),
                                    fontWeight: FontWeight.bold
                                  )
                                  ),
                                  Container(
                                    width: 600,
                                    child: Text(
                                      mountain[index].explained,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                  
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
