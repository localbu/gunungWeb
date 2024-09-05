import 'package:flutter/material.dart';
import 'package:gunung2/mobile/components/my_button.dart';

class WelcomeMobileDisplay extends StatelessWidget {
  const WelcomeMobileDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img/welcome-background.jpg'),
          fit: BoxFit.cover),
          
        ),
        
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 1000,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Indonesian Mountain Profiles',
                    style: TextStyle(
                      fontSize: 20, 
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'A Comprehensive Guide to the Tallest Mountains',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                    ),
    
                  ),
                  const SizedBox(height: 20,),
    
                  MyButton(onTap: ()=> Navigator.pushNamed(context,'/homePage'), child: const Icon(Icons.arrow_forward_outlined, color: Colors.white,), warna: Colors.black,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}