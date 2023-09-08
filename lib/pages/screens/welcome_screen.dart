import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});
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
            const Text('Welcome to \nCelebrity Online',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
             Text('Connect, Interact, Inspire! Celebrity \nOnline: Your Access to Stars!',
            style: TextStyle(
              fontSize: 15,
              color: txtColor,
            ),
            textAlign: TextAlign.center,
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