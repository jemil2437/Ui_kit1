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
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                border: Border.all(
                    //  width: 2,
                    ),
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.orange.shade300, Colors.red.shade500],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            // width: 2,
                            ),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        size: 25,
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.only(right: 5, top: 5),
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.watch_later_outlined,
                      color: Colors.white,
                      size: 100,
                    ),
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 32, top: 7, bottom: 7),
                    child: Text(
                      "WORK",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: "OpenSans",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 32, top: 10),
                    child: Text(
                      "Design a to-do app for a client at work.",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 32, top: 25),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          alignment: Alignment.centerLeft,
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(95),
                                      side: BorderSide(width: 1)))),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "  Today  ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
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
