import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:sizer/sizer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design) If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    return ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: homepage(),
      ),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final buttoncolor = Color(0xff6688FF);
  final darktextcolor = Color(0xff1F1A3D);
  final lighttextcolor = Color(0xff999999);
  final textfieldcolor = Color(0xffF5F6FA);
  final bordercolor = Color(0xffD9D9D9);

  Widget textfieldfunction({required String hint}) {
    // pass the parameter in the function (property of perticulare widget)
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 0)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        fillColor: textfieldcolor,
        filled: true,
        hintText: hint, // hint only changes
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontFamily: GoogleFonts.nunito().fontFamily,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 24.w), //width dependent give the ratio
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  "Sign Up to Masterminds",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: GoogleFonts.nunito().fontFamily,
                      fontSize: 18.sp,
                      color: darktextcolor),
                ),
                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontSize: 14.sp,
                          color: lighttextcolor),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                              fontSize: 14.sp,
                              color: buttoncolor),
                        )),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                textfieldfunction(hint: "First name"),
                SizedBox(height: 16.h),
                textfieldfunction(hint: "Email id"),
                SizedBox(height: 16.h),
                textfieldfunction(hint: "Password"),
                SizedBox(height: 16.h),
                textfieldfunction(hint: "Confirm password"),
                SizedBox(height: 16.h),
                SizedBox(
                    width: double
                        .infinity, //jyare screen na double side ma open karvu hoi tyare aa use thay
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.w700),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(buttoncolor),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                      ),
                    )),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "or sign up via",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontWeight: FontWeight.w600,
                          color: lighttextcolor),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                    width: double
                        .infinity, //jyare screen na double side ma open karvu hoi tyare aa use thay
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min, //content center ma re
                        children: [
                          Icon(Icons.cloud_done_rounded),
                          SizedBox(width: 10.w),
                          Text(
                            "Google",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: GoogleFonts.nunito().fontFamily,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: bordercolor)),
                        foregroundColor:
                            MaterialStateProperty.all(darktextcolor),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 14.h)),
                      ),
                    )),
                SizedBox(
                  height: 16.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "By signing up to Masterminds you agree to our ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                          fontSize: 14.sp,
                          color: lighttextcolor),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "terms and conditions",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontSize: 14.sp,
                            color: buttoncolor),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.only(bottom: 12.h, right: 7.w))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
