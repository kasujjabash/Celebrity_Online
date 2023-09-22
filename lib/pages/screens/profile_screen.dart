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
    );
  }
}