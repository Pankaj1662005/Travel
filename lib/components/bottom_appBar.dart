import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottomappBar extends StatelessWidget {
  const bottomappBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Color(0xFFeef3f5),
      hoverColor: Colors.cyan.shade800,
      activeColor: Colors.red,
      style: GnavStyle.google,
      gap: 8,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          onPressed: () {
            Navigator.pushNamed(context, 'lucknow');
          },
        ),
        GButton(
          icon: Icons.search,
          text: 'search',
          onPressed: () {},
        ),
        GButton(
          icon: Icons.person,
          text: 'Profile',
          onPressed: () {
            Navigator.pushNamed(context, 'lucknow');
          },
        ),
        GButton(
          icon: Icons.hotel,
          text: 'Hotels',
          onPressed: () {
            Navigator.pushNamed(context, 'info');
          },
        )
      ],
    );
  }
}
