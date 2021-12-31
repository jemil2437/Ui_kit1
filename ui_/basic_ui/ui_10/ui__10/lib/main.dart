
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Icon(
                  Icons.more_vert_outlined,
                  size: 26,
                  color: Colors.black,
                ),
              ),
              Container(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 26,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Grocery",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent.shade400),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "At Your",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Doorstep",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Card(
              elevation: 10,
              margin: EdgeInsets.only(top: 30),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, top: 5, right: 5, bottom: 10),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 25,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Delivery to :",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade900,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 10, bottom: 10),
                    child: Text("B-82,Balavant ...",
                        style: TextStyle(
                          fontSize: 12,
                        color: Colors.black54,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 25),
                    child: TextButton(onPressed: 
                    (){}, child: Text("CHANGE",style: TextStyle(color:Colors.greenAccent.shade400,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top:35),
            child: Text("Essential Deals",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 180,
            width:350,
            // color: Colors.green.shade100,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(28),
            ),
          ),
           Container(
            margin: EdgeInsets.only(top: 20),
            height: 180,
            width:350,
            // color: Colors.green.shade100,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ],
      ),
    ),
    Text(
      'Categories',
      style: TextStyle(fontSize: 25),
    ),
    Text(
      'My cort',
      style: TextStyle(fontSize: 25),
    ),
    Text(
      'More',
      style: TextStyle(fontSize: 25),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, size: 30),
            label: 'My cort',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.green,
        elevation: 10,
        fixedColor: Colors.green,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
