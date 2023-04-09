import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottomappBar extends StatefulWidget {
  const bottomappBar({Key? key}) : super(key: key);

  @override
  State<bottomappBar> createState() => _bottomappBarState();
}

class _bottomappBarState extends State<bottomappBar> {
  int _index = 0;
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
          onPressed: () {
            Navigator.pushNamed(context, 'search page');
          },
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
        ),
      ],
      selectedIndex: _index,
      onTabChange: (index) {
        setState(() {
          _index = index;
        });
      },
    );
  }
}
