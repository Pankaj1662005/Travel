import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfLikes = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:LikeButton(
            size:80,
            animationDuration: Duration(milliseconds:2000),
            likeCount:numberOfLikes,
            countPostion:CountPostion.bottom,
            likeBuilder: (isTapped) {
              //  return Icon(
              //    Icons.bookmark,
              // //   Icons.monetization_on,
              //    color: isTapped ? Colors.deepPurple : Colors.grey,
              //    size:80,
              //  );
              child:
              return IconButton(
                icon:Icon(Icons.bubble_chart),
                onPressed:(){
                  Navigator.pushNamed(context,'com');
                },
                iconSize:100,
                color:Colors.brown,
              );
            }


        ),
      ),


    );
  }
}
