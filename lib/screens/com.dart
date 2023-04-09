import 'package:flutter/material.dart';
int i = 0;
int top = 1;
List<String> myList = ['1) This was the best day of my life believe me',
  '2) Hello guys i want to tell you that this is the best place in India',
  '3) This is awesome place i got so much fascinated by this sight ',
];
class MyCom extends StatefulWidget {
  const MyCom({Key? key}) : super(key: key);

  @override
  State<MyCom> createState() => _MyComState();
}

class _MyComState extends State<MyCom> {

  final _textController = TextEditingController();

  String userPost = '';
  String live = '';

  void copy() {
    setState(() {
      myList.add(userPost);
      print(userPost);
      i = i + 1;
    });
    // myList[i] = userPost;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[200],
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: 'Enter your text',
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20.0),
            //     ),
            //   ),
            // )
            TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'whats on your mind?',

                  border: OutlineInputBorder(),


                  suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: Icon(Icons.clear)),
                )),


            MaterialButton(
              onPressed: () {
                setState(() {
                  userPost = _textController.text;

                });
                copy();

                // if (i == 3) {
                //   top = top + 1;
                //   Navigator.pushNamed(context, 'animalresult');
                // }
              },
              color: Colors.blue,
              child: Text('Add',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height:50,
            ),
            ElevatedButton(
                child:Text('Show Comments',

                ),
                onPressed:(){
                  Navigator.pushNamed(context,'comishere');
                },
              style:ElevatedButton.styleFrom(
                backgroundColor:Colors.blue,
              ),

            )
          ],
        )

    );
  }
}
