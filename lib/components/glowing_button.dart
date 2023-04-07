import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  final Color color1;
  final Color color2;
  const GetStarted({Key? key, this.color1=Colors.cyan,this.color2=Colors.greenAccent}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  var glowing =false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTapUp: (val){
         setState(() {
           glowing=false;
         });
       },
      onTapDown: (val){
         setState(() {
           glowing=true;
         });
      },
      child: AnimatedContainer(
duration: Duration(milliseconds: 200),
        height: 40,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(colors: [
            widget.color1,
            widget.color2,
          ]),
          boxShadow: glowing?[
            BoxShadow(
              color: widget.color1.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: Offset(-8, 0)
            )
          ]
            :[]
        ),
        child: Row(
          children: [
            Icon(glowing?Icons.lightbulb:Icons.light_mode_outlined,color: Colors.white,),
            Text(" Get Started",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
