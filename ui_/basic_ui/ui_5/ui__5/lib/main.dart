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
        body: SafeArea(
            child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(width: 0, color: Colors.white)),
            elevation: 5,
            shadowColor: Colors.white,
            color: Colors.white,
            child: Container(
              height: 420,
              width: 350,
              // color: Colors.green.shade500,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            margin: EdgeInsets.only(right: 107),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/photo1.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            // color: Colors.yellow.shade50,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 19),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              size: 43,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "McDonald's",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, bottom: 25, right: 15),
                              child: Icon(
                                Icons.location_on_rounded,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 30),
                              child: Text(
                                '4.5Km',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.star_outlined,
                                size: 30,
                                color: Colors.yellow.shade700,
                              ),
                            ),
                            Container(
                              child: Text(
                                "435",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "(5.0)",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 27),
                            height: 72,
                            width: 72,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/photo2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 27),
                            height: 72,
                            width: 72,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/images/photo3.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          Container(
                            height: 72,
                            width: 72,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://content3.jdmagicbox.com/comp/mumbai/43/022p8005243/catalogue/mcdonald-s-chembur-west-mumbai-fast-food-fex2hcr7qn.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
