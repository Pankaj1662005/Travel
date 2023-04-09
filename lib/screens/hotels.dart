import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor:Colors.deepPurple,
            leading: Icon(Icons.arrow_back),
            title: Text('Rating  for  H O T E L S'),
            expandedHeight: 150,
          ),

          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height:300.0,
                      width:200.0,
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('images/raj.jpg'),
                          fit:BoxFit.contain,
                        ),
                      ),))

            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(height:30,color: Colors.white,
                      child:Center(
                        child: Text('The Raj Palace',


                          style:TextStyle(
                              fontSize:20,
                              color:Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal

                          ),
                        ),
                      ),))

            ),

          ),

          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(

                      height:300.0,
                      width:200.0,
                      child: InkWell(

                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('images/ashu1.jpg'),
                          fit:BoxFit.contain,
                        ),
                      ),))


            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(height:30,color: Colors.white,
                      child:Center(
                        child: Text('Ashu Restaurants',


                          style:TextStyle(
                              fontSize:20,
                              color:Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal

                          ),
                        ),
                      ),))

            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(

                      height:300.0,
                      width:200.0,
                      child: InkWell(

                        splashColor: Colors.black26,
                        onTap: () {},
                        child: Ink.image(
                          image: AssetImage('images/simran.jpg'),
                          fit:BoxFit.fill,
                        ),
                      ),))


            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(height:30,color: Colors.white,
                      child:Center(
                        child: Text('Simran Hotels',


                          style:TextStyle(
                              fontSize:20,
                              color:Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal

                          ),
                        ),
                      ),))

            ),
          ),

        ],
      ),
    );
  }
}