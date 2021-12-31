import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myhome(),
    ),
  );
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
          color: Colors.grey.shade800,
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                      child: Text(
                        "Change order",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      padding: EdgeInsets.only(right: 157),),
                  Container(
                    height: 50,
                    width: 50,
                    //  color: Colors.white,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/photo1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "Good morning,\nJohn!",
                  style: TextStyle(
                    fontFamily: 'Glory',
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 220,
                width: 150,
                margin: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/photo2.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(25)),
              ),
              Container(
                margin: EdgeInsets.only(top: 33),
                child: Text(
                  "DARK MOCHA",
                  style: TextStyle(fontSize: 25,fontFamily: 'Glory', color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13),
                child: Text(
                  "\$ 4.50",
                  style: TextStyle(color: Colors.white,fontFamily: 'Glory', fontSize: 17),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Card(
                        margin: EdgeInsets.only(right: 26),
                        elevation: 25,
                        color: Colors.black38,
                        child: Container(
                          height: 157,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white54),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Column(
                            children: [
                              Container(
                              padding:EdgeInsets.only(top:30),
                              alignment: Alignment.center,
                              child:Icon(Icons.delete_outline,size: 75,color: Colors.white54),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("Size",style: TextStyle(color: Colors.white54),),
                              ),
                            ],
                          )
                        ),
                      ),
                      Card(
                        elevation: 25,
                        color: Colors.black38,
                        child: Container(
                          height: 157,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white54),
                            borderRadius: BorderRadius.circular(10),
                          ),
                           child:Column(
                            children: [
                              Container(
                              padding:EdgeInsets.only(top:30),
                              alignment: Alignment.center,
                              child:Icon(Icons.flatware_rounded,size: 75,color: Colors.white54),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("Flavor",style: TextStyle(color: Colors.white54),),
                              ),
                            ],
                          )
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
