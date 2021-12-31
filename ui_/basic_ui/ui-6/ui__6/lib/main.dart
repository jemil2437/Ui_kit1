import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myhome(),
  ));
}

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.red.shade50,
          child: Center(
            child: Card(
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(15),
                height: 330,
                width: MediaQuery.of(context).size.width / 1.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                    height:250,
                    width: 200,
                    child:Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 38),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Apple Juice",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Almost every person awake their juice and chance work own big food."),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(child:Text("\$",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                              padding: EdgeInsets.only(top: 16),),
                        Container(  
                          padding: EdgeInsets.only(top: 20,right: 18),
                          alignment:Alignment.centerLeft,
                          child: Text("12.65",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w900),),
                        ),
                        Container(  
                          padding: EdgeInsets.all(11),
                          margin: EdgeInsets.only(top: 20),
                          height: 45,
                          width: 100,
                          child: Text("-   1   +",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18),),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red.shade400,
                          ),
                        ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ),
                    Stack(
                      children: [
                         Container( 
                     height: 240,
                     width: 140,
                     decoration:BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.red.shade50),
                   ),
                   Container(
                    // color: Colors.red.shade50,
                    height:200,
                    width: 100,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://previews.123rf.com/images/valentynabezdushna/valentynabezdushna1903/valentynabezdushna190300068/120946733-vector-apple-juice-poster-in-with-typography-elements.jpg'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
