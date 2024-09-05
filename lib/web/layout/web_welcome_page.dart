import 'package:flutter/material.dart';

class WebWelcomePage extends StatelessWidget {
  const WebWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Indonesian Mountain Profiles',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800
                            ),
                            ),
                          Text(
                            'A Comprehensive Guide to the Tallest Mountains',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                        ],
                      ),
                      const SizedBox(height: 20,),
                        InkWell(
                          onTap: ()=> 
                          Navigator.pushNamed(context, '/homePage'),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.arrow_forward, 
                              color: Colors.white,
                              size: 30,),
                            ),
                          ),
                        )
                    ],
                  ),
                  Container(
                    width: 600,
                    height: 400,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/img/sumantri.jpeg'),
                        fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}