import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
        child: home(),
      ),
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Icon(
                    Icons.menu_outlined,
                    size: 30,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 22, color: Colors.black54),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "David Patterson",
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              height: 185,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10),
              child: Card(
                shadowColor: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text("File Transfer",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Transfer files with friends in quick ways.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.indigoAccent.shade100),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.only(left: 43, right: 43)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(140))),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  "Receive",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.indigoAccent.shade100),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.only(left: 35, right: 35)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(140))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 35),
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red.shade100,
                      ),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.ondemand_video_outlined,
                                  color: Colors.red, size: 35)),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Videos",
                              style: TextStyle(color: Colors.red.shade900),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 35),
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade100,
                      ),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.music_note,
                                  color: Colors.blue, size: 35)),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Music",
                              style: TextStyle(color: Colors.blue.shade900),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 15),
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade100,
                      ),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.share,
                                  color: Colors.green, size: 35)),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Share Zone",
                              style: TextStyle(color: Colors.green.shade900),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 15),
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange.shade100,
                      ),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.insert_drive_file_outlined,
                                  color: Colors.orange, size: 35)),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Files",
                              style: TextStyle(color: Colors.orange.shade900),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 25, bottom: 20),
              child: Text(
                "Friends",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.indigoAccent,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?b=1&k=20&m=1300512215&s=170667a&w=0&h=LsZL_-vvAHB2A2sNLHu9Vpoib_3aLLkRamveVW3AGeQ='),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXe8jSnusyhynECDAbbN0ARuszoGh1iIpAo8wWfF1YZwUmgskKKIPY3Z_NH6zTNqEOd20&usqp=CAU'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRij6dtiHizH96qpCOe8WeXXP3yLyQJkPdGVg&usqp=CAU'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 33),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.red.shade100,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20, right: 60),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Web Share",
                          style: TextStyle(
                              color: Colors.blue.shade900, fontSize: 21),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Now easy ways to transfer \nfiles with browser.",
                          style: TextStyle(color: Colors.blue.shade900),
                        ),
                      ),
                    ],
                  ),
                    Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.only(left: 25),
                    alignment: Alignment.center,
                    child: Lottie.asset('assets/images/aja2.json',
                    fit: BoxFit.cover, 
                    reverse: false,
                    repeat: true),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
