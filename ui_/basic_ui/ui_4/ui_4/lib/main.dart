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
        body: SafeArea(child: myhome()),
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
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 300,
                  width: 175,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/photo1.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 90,
                  width: 150,
                  margin: EdgeInsets.all(20),
                  // color: Colors.white,
                  /*decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),*/
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Minimal",
                          style: TextStyle(fontSize: 15),
                        ),
                        padding: EdgeInsets.only(left: 10, top: 15),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(left: 10, top: 10, right: 30),
                              child: Text("\$216",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                                size: 20,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "4.8",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 300,
                  width: 175,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/photo2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 90,
                  width: 150,
                  margin: EdgeInsets.all(20),
                  // color: Colors.white,
                  /*decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),*/
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Grey scott",
                          style: TextStyle(fontSize: 15),
                        ),
                        padding: EdgeInsets.only(left: 10, top: 15),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(left: 10, top: 10, right: 30),
                              child: Text("\$228",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow.shade700,
                                size: 20,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "4.6",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
