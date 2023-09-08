import 'package:flutter/material.dart';

class LetsGoScreen extends StatelessWidget {
  const LetsGoScreen({super.key});
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
            const Text('Lets Go',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 10,
            ),
             Text("Now that you know who we are, \nlet's dive into the captivating world \nof Celebrity Online and embark on \nan exhilarating journey! Let the \nentertainment begin!",
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