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
                image: AssetImage('images/logo2.jpg'),
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
            title: const Text('Item 1'),
            splashColor: Colors.tealAccent,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            splashColor: Colors.tealAccent,
            tileColor: Colors.red,
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            splashColor: Colors.tealAccent,
            tileColor: Colors.blue,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
