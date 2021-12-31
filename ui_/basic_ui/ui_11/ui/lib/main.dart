import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(resizeToAvoidBottomInset: false, body: MyApp()),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}


TextEditingController EmailId =
    TextEditingController(); //that is part of textfield

FocusNode Email = FocusNode();


TextEditingController Password =
    TextEditingController(); //that is part of textfield
FocusNode Pass = FocusNode();

String? email;
String? password;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
              child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                color: Colors.blue.shade400,
                child: Container(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: const Text(
                      "Welcome,\nAt our application",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 190),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )),
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
                  child: Column(               // you can use singlechildscrollview in some cases
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(

                        alignment: Alignment.topCenter,
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: "Merriweather",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: TextField(
                          controller: EmailId,
                          focusNode: Email,
                          // maxLines: 4,
                          // maxLength: 40,
                          autofocus: false,
                          // obscureText: true, //security or password perform
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          //keyboard setting purpose:
                          textInputAction: TextInputAction.next,
                          autocorrect: true,
                          // textCapitalization: TextCapitalization.words,
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.start,
                          style: const TextStyle(color: Colors.black54, fontSize: 19),
                          cursorColor: Colors.black,
                          cursorRadius: const Radius.circular(20),
                          cursorWidth: 2,
                          cursorHeight: 30,
                          // showCursor: false,
                          decoration: const InputDecoration(
                            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            labelText: 'Email Id',
                            labelStyle:
                                TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: TextField(
                          controller: Password,
                          focusNode: Pass,
                          // maxLines: 4,
                          maxLength: 8,
                          autofocus: false,
                          obscureText: true, //security or password perform
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          //keyboard setting purpose:
                          textInputAction: TextInputAction.next,
                          autocorrect: true,
                          // textCapitalization: TextCapitalization.words,
                          keyboardType: TextInputType.multiline,
                          textAlign: TextAlign.start,
                          style: const TextStyle(color: Colors.black54, fontSize: 19),
                          cursorColor: Colors.black,
                          cursorRadius: const Radius.circular(20),
                          cursorWidth: 2,
                          cursorHeight: 30,
                          // showCursor: false,
                          decoration: const InputDecoration(
                            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: 18, color: Colors.black),
                            // hintText: 'Password',hintStyle: TextStyle(color: Colors.grey),
                            // helperText: 'incase sensitive,case sensitive,specialcharacter and digit'
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.black54),
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontFamily: "Merriweather"),
                          ),
                          style: ButtonStyle(
                            shadowColor:
                                MaterialStateProperty.all(Colors.black),
                            elevation: MaterialStateProperty.all(2),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue.shade400),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black54),
                            minimumSize:
                                MaterialStateProperty.all(const Size(100, 40)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29))),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            // alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 86),
                            margin: const EdgeInsets.only(top: 4),
                            child: const Center(
                              child: Text(
                                "New user?",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            onPressed: () {},
                            child: Container(
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          // Container(margin:EdgeInsets.only(top: 5),child: Text(" Sign Up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      );
    });
  }
}
