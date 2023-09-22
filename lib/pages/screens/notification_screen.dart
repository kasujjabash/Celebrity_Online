import 'package:celebrity_online/pages/drower.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You don't have any\n Notification",
            style: TextStyle(
              fontSize: 15,
              
            ),
            textAlign: TextAlign.center,
            ),
             
          ],
        ),
        ),
    );
  }
}