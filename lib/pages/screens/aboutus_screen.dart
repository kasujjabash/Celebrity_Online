import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
final Color backColr = const Color(0xFFE3EBFF);
final Color txtColor = const Color(0XFF270B1C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColr,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('About Us',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 10,
            ),
             Text('Connecting you to the stars you \nlove! Experience direct interactions,\nexclusive content, and unforgettable \nmoments with your favourite celebrities.\nJoin a vibrant community \nof fans and make your stardom \ndreams a reality!',
            style: TextStyle(
              fontSize: 15,
              color: txtColor,
            ),
            textAlign: TextAlign.justify,
            ),
          const  SizedBox(
              height: 20,
            ),
            TextButton(onPressed: (){},
             style: TextButton.styleFrom(
              backgroundColor: txtColor,
              foregroundColor: Colors.white,
              ),
              
             child: const Text('NEXT',),
             )
          ],
        ),
      ),
    );
  }
}