import 'package:alpha/components/glowing_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/1page.jpg'),fit:BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: Color(0xFFeef3f5),
                        fontSize: 50,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Travel  ',
                    style: TextStyle(
                      color: Color(0xFF171E25),
                        fontSize: 50,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Inspire.',
                    style: TextStyle(
                        color: Color(0xFF171E25),
                        fontSize: 50,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Life is all about journey',
                    style: TextStyle(
                        color: Color(0xFF8f9399),
                        fontSize: 15,
                    ),
                  ),


                ),
                Text(
                  'find yours.....                  ',
                  style: TextStyle(
                    color: Color(0xFF8f9399),
                    fontSize: 15,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: GetStarted(),
                ),
              ],

            ),

          ),

        ),





    );

  }
}
