import 'package:celebrity_online/pages/screens/favourites_screen.dart';
import 'package:celebrity_online/pages/screens/home_sceen.dart';
import 'package:celebrity_online/pages/screens/notification_screen.dart';
import 'package:celebrity_online/pages/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
 int _currentIndex = 0;

  final List<Widget> _Screern= [
    HomeScreen(),
    const FavouritesScreen(),
    const NotificationScreen(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B5999),

      // the side menue
      // appBar: AppBar(actions: [
      //   IconButton(onPressed: (){},
      //   icon: const Icon(Icons.search))
      // ],
      // backgroundColor:const Color(0xFF3B5999),
      // ),

      body:_Screern[_currentIndex],
      
        bottomNavigationBar: Container(
          color: const Color(0xFFE3EBFF),
          child:  Padding(
            padding:  const EdgeInsets.symmetric(horizontal:10, vertical: 12),
            child:  GNav(
              backgroundColor:const Color(0xFFE3EBFF),
              activeColor:const Color(0xFFE3EBFF),
              tabBackgroundColor: const Color(0xFFC474A6),
              padding:const EdgeInsets.all(16),
              gap: 8,

              selectedIndex: _currentIndex,
              onTabChange:(index) {
                setState(() {
                  _currentIndex = index;
                });
              },//Navigating to the next page functionality

              tabs: const [
                GButton(icon: Icons.home_outlined,
                text: 'Home',
                ),
                GButton(icon: Icons.favorite_border_sharp,
                text: 'Favourites'
                ),
                GButton(icon: Icons.notification_add_outlined,
                text: 'Notifications'
                ),
                GButton(icon: Icons.person,
                text: 'Profile'
                )
              ]),
          ),
        ),
  );
  }
}