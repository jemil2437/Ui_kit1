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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(width: 0, color: Colors.white)),
            elevation: 5,
            shadowColor: Colors.white,
            color: Colors.white,
            child: Container(
              height: 400,
              width: 370,
              // color: Colors.green.shade500,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/photo1.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 35),
                    child: Text(
                      "Commuters Dream",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Kearny,New York",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 15),
                          child: Text("4 rooms-800m"),
                        ),
                        Container(
                          child: Text("2"),
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 56),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "\$50,000",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          child: Text(
                            "/Month",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          padding: EdgeInsets.only(top: 15),
                        ),
                      ],
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
