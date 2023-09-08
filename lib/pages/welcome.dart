import 'package:celebrity_online/pages/signin_page.dart';
import 'package:celebrity_online/pages/signup_page.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
   const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  //my routes
   void navigation(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return const LoginScreen();
    }));
  }

  void navigating(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return const SignUp();
    }));
  }
  final Color myColor = const Color(0xFF952B6A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://ugamusic.ug/storage/image_cover/FeffeBussiProfile_1602014086.jpg'),
                fit: BoxFit.cover
                )
            ),

          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: myColor, 
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20.0),
                //   topRight: Radius.circular(20.0),
                // ),
              ),
              // padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const Column(
                  children: [
                    Text("Celebrity Online",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),

                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //Login button
                 InkWell(
                   child: ElevatedButton(
                      onPressed: () {
                       navigation();
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 101, 2, 61),),
                      child: const Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                      )
                    ),
                 ),


                //  Signup Button
                  InkWell(
                    child: ElevatedButton(
                      onPressed: () {
                       navigating();
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(207, 39, 150, 248),),
                      child: const Text('Signup',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                      ),
                      )
                    ),
                  ),
                ],
              ),
              ],)
            ),
          ),
        ],
      ),
    );
  }
}