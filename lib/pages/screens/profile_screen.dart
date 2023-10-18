import 'package:celebrity_online/pages/Yourorder/all.dart';
import 'package:celebrity_online/pages/Yourorder/order_page.dart';
import 'package:celebrity_online/pages/Yourorder/schedule_page.dart';
import 'package:celebrity_online/pages/drower.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // void NavigateProfile{
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_){
  //     return const ProfilePage();
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(children: [
          const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://pics.freeicons.io/uploads/icons/png/16671574911586787867-512.png'),
            ),
          const SizedBox(
              height: 20,
            ), 
            const SizedBox(
              height: 20,
            ),
      
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const SchedulePage()));
              },
              child:const Row(

      
                children: [
                  Icon(Icons.calendar_month_outlined),
                  SizedBox(height: 10),
                  Text('Schedules'),
                ],
                
              ),
            ), 
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const OrderPage()));
              },
              child:const Row(

                children: [
                  Icon(Icons.video_call_outlined),
                  SizedBox(height: 10),
                  Text('Your Orders'),
                ],
                
              ),
            ),
          ],)
        ),
      ),
    );
  }
}