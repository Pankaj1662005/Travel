import 'package:flutter/material.dart';

class lucknow extends StatefulWidget {
  const lucknow({Key? key}) : super(key: key);

  @override
  State<lucknow> createState() => _lucknowState();
}

class _lucknowState extends State<lucknow> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
            backgroundColor: Colors.white,
            body:SingleChildScrollView(
                child: Container(
                    child: Column(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
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
                                  image: AssetImage('assets/luck2.jpg'),
                                ),
                              ),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  Padding(
                                    padding: const EdgeInsets.only(left:2.0,top: 300.0),
                                    child: Text(
                                      'Lucknow',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:2.0,top: 10.0),
                                    child: Text(
                                      'The City Of Nawabs And Kababs',
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
                          ),





                          // Container(
                          //   height:350.0,
                          //   width: 450.0,
                          //   child:
                          //   Padding(
                          //     padding: const EdgeInsets.only(left:20.0,top: 270.0),
                          //     child: Text(
                          //       'Lucknow',
                          //       style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: 50,
                          //         fontWeight: FontWeight.w900,
                          //       ),
                          //     ),
                          //   ),
                          //
                          //
                          //
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //       image: AssetImage('assets/luck2.jpg'),
                          //       fit: BoxFit.fill,
                          //
                          //     ),
                          //
                          //
                          //   ),
                          //
                          // ),

                          GestureDetector(
                            onTap:(){
                              setState(() {
                                selected=!selected;
                              });
                            },
                            child:Container(
                                color: Colors.white,
                                width:double.infinity,
                                height:50.0,

                                child: Row(
                                  children:[
                                    IconButton(
                                        icon:Icon(Icons.add_business_outlined),
                                        onPressed:(){},
                                        iconSize:30,
                                        color:Colors.black
                                    ),

                                    AnimatedAlign(
                                      alignment:selected? Alignment.centerRight: Alignment.centerLeft,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.slowMiddle,

                                      child: Text(
                                        'Hotels',
                                        style:TextStyle(
                                          color:Colors.black,
                                          fontFamily: 'Pacifico',
                                          fontSize:20.0,
                                        ),
                                      ),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:200.0),
                                      child: IconButton(
                                          icon:Icon(Icons.arrow_forward_sharp),
                                          onPressed:(){},
                                          iconSize:30,
                                          color:Colors.black
                                      ),
                                    ),


                                  ],
                                )
                            ),
                          ),

                          Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                selected=!selected;
                              });
                            },
                            child:Container(
                                width:double.infinity,
                                height:50.0,
                                color:Colors.white,
                                child: Row(
                                  children:[
                                    IconButton(
                                        icon:Icon(Icons.remove_red_eye),
                                        onPressed:(){},
                                        iconSize:30,
                                        color:Colors.black
                                    ),

                                    AnimatedAlign(
                                      alignment:selected? Alignment.centerRight: Alignment.centerLeft,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.slowMiddle,

                                      child: Text(
                                        'Sights',
                                        style:TextStyle(
                                          color:Colors.black,
                                          fontFamily: 'Pacifico',
                                          fontSize:20.0,
                                        ),
                                      ),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:210.0),
                                      child: IconButton(
                                          icon:Icon(Icons.arrow_forward_sharp),
                                          onPressed:(){},
                                          iconSize:30,
                                          color:Colors.black
                                      ),
                                    ),


                                  ],
                                )
                            ),

                          ),Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                selected=!selected;
                              });
                            },
                            child:Container(
                                width:double.infinity,
                                height:50.0,
                                color:Colors.white,
                                child: Row(
                                  children:[
                                    IconButton(
                                        icon:Icon(Icons.camera_alt),
                                        onPressed:(){},
                                        iconSize:30,
                                        color:Colors.black
                                    ),

                                    AnimatedAlign(
                                      alignment:selected? Alignment.centerRight: Alignment.centerLeft,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.slowMiddle,

                                      child: Text(
                                        'Things To Do',
                                        style:TextStyle(
                                          color:Colors.black,
                                          fontFamily: 'Pacifico',
                                          fontSize:20.0,
                                        ),
                                      ),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:150.0),
                                      child: IconButton(
                                          icon:Icon(Icons.arrow_forward_sharp),
                                          onPressed:(){},
                                          iconSize:30,
                                          color:Colors.black
                                      ),
                                    ),


                                  ],
                                )
                            ),

                          ),Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          Container(
                              height:117.0,
                              width: 450.0,
                              color:Colors.white,
                              child:  Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                    'Top Plans',
                                    style:TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Pacifico',
                                      color:Colors.black,
                                      fontSize:40.0,
                                    )
                                ),
                              )
                          ),
                          Container(
                              height: 400,

                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                        color: Colors.white,
                                        child:Column(
                                            children:[
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Container(
                                                  width: 350,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage('images/chhota-imambara.jpg'),
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(25),
                                                    child: Image.asset(
                                                      'images/chhota-imambara.jpg',

                                                      width: 50,
                                                      height: 50,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Chotta Imambara',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              Text(
                                                'A one stop for tourists',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),

                                            ]
                                        )
                                    ),
                                    Container(
                                        color: Colors.white,
                                        child:Column(
                                            children:[

                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Container(
                                                  width: 350,
                                                  height: 300,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage('images/amrapali.jpg'),
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(25),
                                                    child: Image.asset(
                                                      'images/amrapali.jpg',

                                                      width: 50,
                                                      height: 50,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Chotta Imambara',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              Text(
                                                'A one stop for tourists',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ]
                                        )
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child:Column(
                                        children:[
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              width: 350,
                                              height: 300,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage('images/tunday.jpeg'),
                                                ),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: Image.asset(
                                                  'images/tunday.jpeg',

                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Tunday Kebabis',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          Text(
                                            'Selling kebabs since 1923',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child:Column(
                                        children:[
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              width: 350,
                                              height: 300,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage('images/taj.webp'),
                                                ),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(25),
                                                child: Image.asset(
                                                  'images/taj.webp',

                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Taj Hotel',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          Text(
                                            'Best hotel Chains...',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50) ,
                                          color: Colors.white,
                                        ),


                                        height: 200.0,

                                      ),
                                    ),
                                  ]
                              )



                          ),

                        ]
                    )
                )
            )
        )
    );
  }
}