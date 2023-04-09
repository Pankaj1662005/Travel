import 'package:flutter/material.dart';
import 'package:alpha/constants.dart';

class drawer1 extends StatelessWidget {
  const drawer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 25,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: kstartingpagecolor,
              image: DecorationImage(
                image: AssetImage('images/drawerlogo.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: null,
          ),
          Divider(
            height: 1,
            color: Colors.teal,
          ),
          ListTile(
            title: const Text(
              'Hotels',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            splashColor: Colors.tealAccent,
            tileColor: kcontainerColor,
            onTap: () {
              Navigator.pushNamed(context, 'hotels');
            },
          ),
          ListTile(
            title: const Text('RATE US'),
            splashColor: Colors.tealAccent,
            tileColor: Colors.red,
            onTap: () {
              Navigator.pushNamed(context, 'com');
            },
          ),
          ListTile(
            title: const Text('Stories'),
            splashColor: Colors.tealAccent,
            tileColor: Colors.blue,
            onTap: () {
              Navigator.pushNamed(context, 'info');
            },
          ),
        ],
      ),
    );
  }
}
