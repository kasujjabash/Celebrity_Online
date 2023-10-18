import 'package:celebrity_online/pages/Yourorder/completed.dart';
import 'package:celebrity_online/pages/Yourorder/declined.dart';
import 'package:celebrity_online/pages/Yourorder/expired.dart';
import 'package:celebrity_online/pages/Yourorder/open.dart';
import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {

  // void NavigateProfile{
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_){
  //     return const ProfilePage();
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Your Orders'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const AllPage()));
              },
              child: const Text('All')),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OpenPage()));
              }, 
              child:const  Text('Open')),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CompletedPage()));
              }, 
              child:const  Text('Completed')),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ExpiredPage()));

              }, 
              child:const Text('Expired')),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DeclinedPage()));

              }, 
              child:const Text('Declined')),

            ],
          ),
    );
  }
}