import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: first());
  }
}

class first extends StatefulWidget {
  first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
  String swstatus = "off";
  String swstatus2 = "off";
  String swstatus3 = "off";
  String swstatus4 = "off";
  String swstatus5 = "off";

  bool swvalue = false;
  bool swvalue5 = false;
  bool swvalue4 = false;
  bool swvalue3 = false;
  bool swvalue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  child: Card(
                    shadowColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20),
                            top: Radius.circular(160)),
                        side: BorderSide(width: 0, color: Colors.white)),
                    elevation: 15,
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20),
                            top: Radius.circular(160)),
                      ),
                      height: MediaQuery.of(context).size.height / 2.3,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: PageView(
                        children: [
                          Image.network(
                            'https://build.com.au/files/styles/blog_700/public/idea/images/minimalist-living-room_4.jpg?itok=k8bmZscn',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMcpV386h9W3h_1joT1_kbjxmGciJuJirFKeQv4dVuHOpYhDL6M5k2l4tshMpwPQAlS2Y&usqp=CAU',
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://i.pinimg.com/236x/c7/9e/5b/c79e5b6e5be7669793abec34de7a3d7e.jpg',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36 / 78,
                      width: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.pink[100]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36 / 78,
                      width: MediaQuery.of(context).size.height / 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.36 / 78,
                      width: MediaQuery.of(context).size.height / 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black12),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 20),
                    child: Text(
                      "Living room",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2, left: 8),
                        child: Text(
                          "4 devices connected",
                          style: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink[200],
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Icon(
                              Icons.bar_chart_rounded,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "control\ncenter",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Icon(
                              Icons.lightbulb_outline_rounded,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Hue Lights",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue = value;
                                    if (swvalue == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus = "";
                                    }
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 70),
                            child: Icon(
                              Icons.lightbulb_outline_rounded,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 20),
                            child: Text(
                              "Slide Lamp",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue2,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue2 = value;
                                    if (swvalue == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus2 = "";
                                    }
                                  });
                                }),
                          )
                        ],
                      ),
                      //color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Icon(
                              Icons.air,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Air Condition",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue3,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue3 = value;
                                    if (swvalue3 == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus3 = "";
                                    }
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Icon(
                              Icons.my_library_music,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Music",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue4,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue4 = value;
                                    if (swvalue4 == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus4 = "";
                                    }
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(width: 0, color: Colors.white)),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      height: MediaQuery.of(context).size.height / 7.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Icon(
                              Icons.wifi,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Wi-fi",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Switch(
                                value: swvalue5,
                                inactiveThumbColor: Colors.white,
                                activeTrackColor: Colors.green,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    swvalue5 = value;
                                    if (swvalue == false) {
                                      swstatus = "";
                                    } else {
                                      swstatus5 = "";
                                    }
                                  });
                                }),
                          ),
                        ],
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
