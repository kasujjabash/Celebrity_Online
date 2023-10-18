import 'package:celebrity_online/pages/Yourorder/all.dart';
import 'package:celebrity_online/pages/Yourorder/declined.dart';
import 'package:celebrity_online/pages/Yourorder/expired.dart';
import 'package:celebrity_online/pages/Yourorder/open.dart';
import 'package:flutter/material.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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