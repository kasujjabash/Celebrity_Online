import 'package:celebrity_online/pages/my_list_tile.dart';
import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key, this.onProfileTap, this.onSignOut});
  final Color myColor2 = const Color(0xFFC474A6);
  final void Function()? onProfileTap;
  final void Function()? onSignOut;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.person,
              color: myColor2,
            ),),

            MyListTile(
              icon: Icons.home, 
              text: 'Home',
              onTap: () =>Navigator.pop(context),
              ),

// COMMUNICATIONS
              MyListTile(
                icon: Icons.video_call_outlined, 
                text: 'Video call', 
                onTap: onProfileTap ,
                ),

                MyListTile(
                icon: Icons.chat_rounded, 
                text: 'My chats', 
                onTap: onProfileTap ,
                ),
//END OF COMMUNICATIONS

                 MyListTile(
                icon: Icons.logout, 
                text: 'Logout', 
                onTap: onSignOut,
                ),
        ],
      ),
    );
  }
}