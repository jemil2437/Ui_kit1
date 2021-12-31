import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const home());
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: myhome(),
      ),
    );
  }
}

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: 350,
              width: 350,
              // color: Colors.yellow,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/a7/3d/6e/a73d6e4ac85c6a822841e449b24c78e1.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Container(
                    height: 230,
                    // color:Colors.red,
                    child: Icon(Icons.account_circle_rounded, size: 100, color: Colors.white),
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Text(
                      "Alaska",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w900,color: Colors.white),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 30, bottom: 15),
                  ),
                  Container(
                    child: Text(
                      "52 must see places",
                      style: TextStyle(fontSize: 25,color: Colors.white),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
