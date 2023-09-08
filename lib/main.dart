import 'package:celebrity_online/pages/screens/aboutus_screen.dart';
import 'package:celebrity_online/pages/screens/home_sceen.dart';
import 'package:celebrity_online/pages/screens/letsgo_screen.dart';
import 'package:celebrity_online/pages/welcome.dart';
import 'package:celebrity_online/pages/screens/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  await Supabase.initialize(
    url: 'https://gbpwrckpjbmbkhyztmkh.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdicHdyY2twamJtYmtoeXp0bWtoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0NjU3MzgsImV4cCI6MjAwOTA0MTczOH0.nPU8_fKLY47lrLH60bac6MEu1J90vuZ3T5G1WCm8Vow',

  );

  runApp(const MyHome());
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Celebrity Online',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  WelcomeScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}