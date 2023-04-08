import 'package:flutter/material.dart';

class conatiner1 extends StatelessWidget {
  const conatiner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightGreenAccent.shade700,
            Colors.greenAccent,
            Colors.cyan.shade300,
            Colors.lightBlueAccent.shade200,
            Colors.blue,
            Colors.blueGrey.shade500,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

class gradient2 extends StatelessWidget {
  const gradient2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurpleAccent,
            Colors.purple,
            Colors.purpleAccent,
            Colors.pinkAccent,
            Colors.pink,
            Colors.red,
            Colors.redAccent,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
      ),
    );
  }
}
