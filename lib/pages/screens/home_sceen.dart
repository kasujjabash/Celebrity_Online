import 'package:celebrity_online/pages/drower.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF3B5999),
      drawer: const NavBar(),// the side menue
      appBar: AppBar(actions: [
        IconButton(onPressed: (){},
        icon: const Icon(Icons.search))
      ],
      backgroundColor:Color(0xFF3B5999),
      ),

      body: const Padding(
        
        padding: EdgeInsets.all(8.0),
        child:  Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                               Text('WORK')
                              ],
                            ),
                          ),
                        ),
      
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                               Text('WORK')
                              ],
                            ),
                          ),
                        ),
      
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                               Text('WORK')
                              ],
                            ),
                          ),
                        ),
      
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                               Text('WORK')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                               Text('WORK')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Card(
                            child: Column(
                              children: [
                               Text('WORK')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ), 
            ),
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
               scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                          SizedBox(
                            width: 100,
                            height: 200,
                            child: Card(
                              child: Column(
                                children: [
                                 Text('WORK')
                                ],
                              ),
                            ),
                          ),
                  
                          SizedBox(
                            width: 100,
                            height: 200,
                            child: Card(
                              child: Column(
                                children: [
                                 Text('WORK')
                                ],
                              ),
                            ),
                          ),
                  
                          SizedBox(
                            width: 100,
                            height: 200,
                            child: Card(
                              child: Column(
                                children: [
                                 Text('WORK')
                                ],
                              ),
                            ),
                          ),
                  
                          SizedBox(
                            width: 100,
                            height: 200,
                            child: Card(
                              child: Column(
                                children: [
                                 Text('WORK')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 200,
                            child: Card(
                              child: Column(
                                children: [
                                 Text('WORK')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 200,
                            child: Card(
                              child: Column(
                                children: [
                                 Text('WORK')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
            ),  
          ],
        ),
      ),
        bottomNavigationBar: Container(
          color: const Color(0xFFE3EBFF),
          child:  Padding(
            padding:  const EdgeInsets.symmetric(horizontal:10, vertical: 12),
            child:  GNav(
              backgroundColor:const Color(0xFFE3EBFF),
              activeColor:const Color(0xFFE3EBFF),
              tabBackgroundColor: Color(0xFFC474A6),
              padding:const EdgeInsets.all(16),
              gap: 8,

              onTabChange:(index) {print(index);},//Navigating to the next page functionality here

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