import 'package:celebrity_online/pages/drower.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const  Text('Follow your faves',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          const  SizedBox(height: 10,),
          const  Text('To get access to exclusive content, deals\n and more!',
            textAlign: TextAlign.center,
            style: TextStyle(),
            ),
          const  SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,'/Home');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:const Color.fromARGB(255, 101, 2, 61),
            ),
             child:const Text('Explore trending feeds',
             style: TextStyle(color: Colors.white),)),
             
          ],
        ),
        ),
        
    );
  }
}