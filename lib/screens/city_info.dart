import 'package:alpha/constants.dart';
import 'package:flutter/material.dart';

bool selected = false;

class box extends StatelessWidget {
  box({required this.icon1, required this.icon2, required this.name});
  final IconData icon1;
  final IconData icon2;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcontainerColor,
      width: double.infinity,
      height: 50.0,
      child: Row(
        children: [
          IconButton(
              icon: Icon(icon1),
              onPressed: () {},
              iconSize: 30,
              color: Colors.white70),
          AnimatedAlign(
            alignment: selected ? Alignment.centerRight : Alignment.centerLeft,
            duration: const Duration(seconds: 2),
            curve: Curves.slowMiddle,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Pacifico',
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: IconButton(
                icon: Icon(icon2),
                onPressed: () {},
                iconSize: 30,
                color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class box2 extends StatelessWidget {
  box2(
      {required this.imagelocation,
      required this.imageText,
      required this.imageDescription});
  final String imagelocation;
  final String imageText;
  final String imageDescription;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 450,
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          // shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imagelocation),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0, top: 300.0),
              child: Text(
                imageText,
                style: kImageText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0, top: 10.0),
              child: Text(
                imageDescription,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class imagebox1 extends StatelessWidget {
  imagebox1({
    required this.imageLocation,
    required this.imageName,
    required this.imageDescription,
  });
  final String imageLocation;
  final String imageName;
  final String imageDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 350,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  imageLocation,
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            imageName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            imageDescription,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
