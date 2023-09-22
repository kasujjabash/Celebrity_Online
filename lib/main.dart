import 'dart:io';
import 'package:celebrity_online/pages/navigation_page.dart';
import 'package:celebrity_online/pages/screens/home_sceen.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {

  HttpOverrides.global = MyHttpOverrides();
  await Supabase.initialize(
    url: 'https://gbpwrckpjbmbkhyztmkh.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdicHdyY2twamJtYmtoeXp0bWtoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0NjU3MzgsImV4cCI6MjAwOTA0MTczOH0.nPU8_fKLY47lrLH60bac6MEu1J90vuZ3T5G1WCm8Vow',

  );

  runApp(const MyHome());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =(X509Certificate cert, String host, int port) => true;
  }
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
      debugShowCheckedModeBanner: false,
      // initialRoute:   'WelcomeScreen',

     routes: {
      //   'WelcomeScreen' : (_) => const WelcomeScreen(),
        '/Home': (_) =>  HomeScreen(),
      //   '/profile': (_) => const ProfilePage(),
      //   '/login': (_) => const LoginScreen(),
   },//Routes created to enable navigation

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  Navigation(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Navigation();
  }
}

