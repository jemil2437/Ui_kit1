import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(child: home()),
    ),
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 470,
          width: 360,
          // color: Color(0xFF2D365C),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(18),
            color: Color(0xFF2D365C),
          ),

          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 280,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/photo1.jpg'),
                            fit: BoxFit.fitWidth),
                            borderRadius: BorderRadius.circular(18.0),
                            ),
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 100,
                      width: 300,
                      color: Colors.white38,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Current bid",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                padding: EdgeInsets.only(bottom: 10),
                              ),
                              Container(
                                child: Text(
                                  "Ending in",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                padding: EdgeInsets.only(bottom: 10, left: 30),
                              ),
                            ],
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Text("2.45 ETH",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text("18h:20m:6s",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "People Abstract Painting",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/photo.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "@Dobidh",
                        style: TextStyle(color: Colors.white38, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 25),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      //textbutton
                      // child: Icon(Icons.home,size: 34),
                      child: Text(
                        "Place a bid",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          // backgroundColor: Colors.greenAccent,
                        ),
                      ),
                      onPressed: () {},
                      // onLongPress: (){print("no");},
                      style: ButtonStyle(
                        alignment: Alignment.centerLeft,
                        backgroundColor: MaterialStateProperty.all(Colors.pink),
                        // elevation: MaterialStateProperty.all(20),
                        minimumSize: MaterialStateProperty.all(Size(5, 5)),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        padding: MaterialStateProperty.all(EdgeInsets.only(left: 23,right: 23,top:15,bottom: 15)),
                        // shape:MaterialStateProperty.all(CircleBorder()),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 25, right: 20),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "View artwork",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      style: OutlinedButton.styleFrom(
                        onSurface: Colors.purple,
                        side: BorderSide(
                          color: Colors.purple,
                          width: 1,
                        ),
                        padding: EdgeInsets.only(left: 23,right: 23,top:15,bottom: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
