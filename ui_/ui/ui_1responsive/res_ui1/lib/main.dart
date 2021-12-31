import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
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
        title: 'ResponsiveUi_2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: homepage(),
      ),
    );
  }
}

final fntfamily = GoogleFonts.notoSans().fontFamily;
final darktextcolor = Color(0xff303030);
final textfield = Color(0xffF4F4F4);

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Widget boxdesign(
      {required String url,
      required String saletxt,
      required String title,
      required String price,
      required String nonprice}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120.h,
          width: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 1.sp,
                child: Container(
                    alignment: Alignment.center,
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE15050),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.r),
                          bottomLeft: Radius.circular(8.r)),
                    ),
                    child: Wrap(
                      children: [
                        Text(saletxt,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontFamily: fntfamily)),
                        Text("off",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontFamily: fntfamily)),
                      ],
                    )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff383838),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: fntfamily),
        ),
        SizedBox(height: 4.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xffFC9A63),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: fntfamily),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  nonprice,
                  style: TextStyle(
                      color: Color(0xff909090),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: fntfamily),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget boxdesign1({
    required String url,
    required String title,
    required String price,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120.h,
          width: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff383838),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: fntfamily),
        ),
        SizedBox(height: 4.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xffFC9A63),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: fntfamily),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget callfunction(
      {required var color, required icon, required String txt}) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 56.h,
            width: 56.h,
            child: Center(child: icon),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                width: 1.w,
                color: color,
              ),
              color: color,
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          txt,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              fontFamily: fntfamily,
              color: Color(0xff606060)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 10.w), //width dependent give the ratio
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48.h,
                ),
                Text(
                  "Craving sweets?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: darktextcolor,
                      fontFamily: fntfamily,
                      fontSize: 18.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Let's find the right item for you",
                  style: TextStyle(
                      color: Color(0xff909090),
                      fontWeight: FontWeight.w500,
                      fontFamily: fntfamily,
                      fontSize: 14.sp),
                ),
                SizedBox(height: 24.h),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0)),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 18.5.w, vertical: 18.5.h),
                    fillColor: textfield,
                    filled: true,
                    hintText: 'Search', // hint only changes
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffBDBDBD),
                      fontFamily: fntfamily,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24.sp,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  cursorHeight: 18.h,
                ),
                SizedBox(height: 24.h),
                Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff303030),
                      fontFamily: fntfamily),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      callfunction(
                          color: Color(0xffFC9A63),
                          icon: Icon(
                            Icons.cake,
                            size: 24.sp,
                            color: Colors.white,
                          ),
                          txt: "Cake"),
                      SizedBox(width: 16.w),
                      callfunction(
                          color: Color(0xffF4F4F4),
                          icon: Icon(Icons.fastfood,
                              size: 24.sp, color: Color(0xffBDBDBD)),
                          txt: "Breads"),
                      SizedBox(width: 16.w),
                      callfunction(
                          color: Color(0xffF4F4F4),
                          icon: Icon(Icons.local_drink_sharp,
                              size: 24.sp, color: Color(0xffBDBDBD)),
                          txt: "Shakes"),
                      SizedBox(width: 16.w),
                      callfunction(
                          color: Color(0xffF4F4F4),
                          icon: Icon(Icons.flatware_outlined,
                              size: 24.sp, color: Color(0xffBDBDBD)),
                          txt: "Sweets"),
                      SizedBox(width: 16.w),
                      callfunction(
                          color: Color(0xffF4F4F4),
                          icon: Icon(Icons.coffee_sharp,
                              size: 24.sp, color: Color(0xffBDBDBD)),
                          txt: "Donuts"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Best Offers",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      fontFamily: fntfamily,
                      color: Color(0xff303030)),
                ),
                SizedBox(height: 16.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      boxdesign(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTxVsdCWDk7-8BNWq9W2QstcBrsev7lZuQF7e2DC_n7epGoUSuZzRP-xYHJQ3GquOw2Cs&usqp=CAU',
                          saletxt: "20%",
                          title: 'Choco mousse\ncake slice',
                          price: "\$1.20",
                          nonprice: "\$2.00"),
                      SizedBox(width: 16.w),
                      boxdesign(
                          url:
                              'https://3.bp.blogspot.com/-NRaj_9qyrOo/Wb4Q_h1EqgI/AAAAAAAAIDc/Wh8Ya0fGwbs3QwpV194aBQhA2y8i-_uHwCK4BGAYYCw/s1600/Pineapple_Cake__5.JPG',
                          saletxt: "16%",
                          title: "Pineapple cream\ncake slice",
                          price: "\$2.50",
                          nonprice: "\$4.64"),
                      SizedBox(width: 16.w),
                      boxdesign(
                          url:
                              'https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2017/07/06/Food/Images/StrawberryCake-0165.jpg?t=20170517',
                          saletxt: "30%",
                          title: "Strowberry cream\ncake slice",
                          price: "\$4.43",
                          nonprice: "\$7.73"),
                      SizedBox(width: 16.w),
                      boxdesign(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEv3qHhUT95LA1msH8Ag8S2oafx-9oHO4iAQJDpcBJte52zp_-oOuUXBz9J4oRkzNvj7c&usqp=CAU',
                          saletxt: "10%",
                          title: "Blackberry cream\ncake slice",
                          price: "\$2.34",
                          nonprice: "\$6.63"),
                      SizedBox(width: 16.w),
                      boxdesign(
                          url:
                              'https://sugargeekshow.com/wp-content/uploads/2021/03/easy_chocolate_cake_featured.jpg',
                          saletxt: "20%",
                          title: "Black forest\ncream slice",
                          price: "\$2.34",
                          nonprice: "\$5.53"),
                      SizedBox(width: 16.w),
                      boxdesign(
                          url:
                              'https://cdn.igp.com/f_auto,q_auto,t_prodm/products/p-oreo-drip-cake-half-kg-46870-m.jpg',
                          saletxt: "15%",
                          title: "Oreo drip\ncream cake",
                          price: "\$1.55",
                          nonprice: "\$3.53"),
                      SizedBox(width: 16.w),
                      boxdesign(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-BIF01lPn233of1oq1OUFX19v0vGJjaeDDjlwkYFfX8SQT9G2tW1_fnNzAWcnY4A-YPg&usqp=CAU',
                          saletxt: "22%",
                          title: "death by\nchocolate cake",
                          price: "\$2.64",
                          nonprice: "\$4.53")
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 104.h,
                  width: 342.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFC9A63),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      Text(
                        "Become a member\ntoday and get a huge\ndiscount!",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: fntfamily),
                      ),
                      SizedBox(
                        width: 52.w,
                      ),
                      Container(
                        height: 66.h,
                        width: 62.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/15d85b53023319.59254b97bc456.gif'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 24.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  "Most Popular",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff303030),
                      fontFamily: fntfamily),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      boxdesign1(
                          url:
                              'https://images.media-allrecipes.com/userphotos/5613993.jpg',
                          title: "Birthday unicorn\ncake slice",
                          price: "\$2.50"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeLFo6JCcXtCq8aZ_Oi-s-gdTzZKR7f9_xm1uXpk1xZnaUFe01fTl9TkXiCQ-tr5qSUao&usqp=CAU',
                          title: "Buren chocolate\ncake slice",
                          price: "\$3.42"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'http://irepo.primecp.com/2015/06/222193/Black-Forest-Ice-Cream-Cake_ExtraLarge1000_ID-1016165.jpg?v=1016165',
                          title: "Black forest\nice cake",
                          price: "\$5.34"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://img.delicious.com.au/J4jKTB7j/del/2016/05/espresso-martini-layer-cake-30625-1.jpg',
                          title: 'Addective dessert\ncake',
                          price: "\$2.53"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://ocdn.eu/pulscms-transforms/1/kgRktkqTURBXy9kZDNjOWZmZjEyNWE2NzdmOGNjZWIyZGJiY2ZmMjM2ZC5qcGVnkpUDACTNA8bNAh-TBc0DB80Bsw',
                          title: "Oreo choco\nlate cake",
                          price: "\$3.75"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://lilluna.com/wp-content/uploads/2018/04/sour-cream-chocolate-cake-resize2-3-500x375.jpg',
                          title: "Sock crime\nchocolate cake",
                          price: "\$6.34"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://1.bp.blogspot.com/-IgaGrqZWWVo/X9uL3TKsxTI/AAAAAAAAZLA/EOYMSgnr2BES3OiGn_jFO1FLO0BlkIqUwCLcBGAsYHQ/s2048/chocolate%2Bpastry%2Bcake.JPG',
                          title: "Chocolate prstry\ncake",
                          price: "\$5.24"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://www.sugarandcrumbsmixingitup.co.uk/wp-content/uploads/2016/06/Salted-caramel-chocolate-cake.jpg',
                          title: "Salted choco\ncake",
                          price: "\$3.52"),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  height: 104.h,
                  width: 342.w,
                  decoration: BoxDecoration(
                    color: Color(0xff958BFF),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      Container(
                        height: 66.h,
                        width: 62.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cakedelivery-1611788733.jpg?crop=0.692xw:0.692xh;0.129xw,0.161xh&resize=640:*'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 28.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 21.h,
                          ),
                          Text(
                            "Celebrate your\nbirthdays with us!",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontFamily: fntfamily),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Learn More",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontFamily: fntfamily),
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.only(right: 12.w))),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Customer Favorites",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff303030),
                      fontFamily: fntfamily),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      boxdesign1(
                          url:
                              'https://www.thatskinnychickcanbake.com/wp-content/uploads/2014/03/Mocha-Brownie-Cake-3.jpg',
                          title: "Strowbery choco\ncake slice",
                          price: "\$4.63"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://www.chiselandfork.com/wp-content/uploads/2019/05/cookie-dough-ice-cream-cake-5.jpg',
                          title: "Cookies dubge\ncake slice",
                          price: "\$2.42"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://imgmedia.lbb.in/media/2018/12/5c10af6b6726652753d7dc1e_1544597355398.jpg?w=1200&h=628&fill=blur&fit=fill',
                          title: "Baskin robins\nice cake",
                          price: "\$5.74"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://s3.amazonaws.com/cms.ipressroom.com/286/files/20206/rollcake.jpg',
                          title: 'Baskin role\ncake',
                          price: "\$2.53"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://image.shutterstock.com/z/stock-photo-slice-of-chocolate-cream-cake-on-a-plate-with-cherry-89753581.jpg',
                          title: "Slice choco\nlate cake",
                          price: "\$3.75"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://prettysimplesweet.com/wp-content/uploads/2018/06/Black-Forest-Cake-Recipe.jpg',
                          title: "Black forest\nchocolate cake",
                          price: "\$10.63"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://www.biggerbolderbaking.com/wp-content/uploads/2020/06/Best-Ever-Chocolate-Cake2-scaled.jpg',
                          title: "Dark Chocolate\nprstry cake",
                          price: "\$2.93"),
                      SizedBox(width: 16.w),
                      boxdesign1(
                          url:
                              'https://thedessertedgirl.com/wp-content/uploads/2018/04/ChocolateCreamCheeseCakeA.jpg',
                          title: "Salted choco\ncake",
                          price: "\$2.75"),
                    ],
                  ),
                ),
                SizedBox(height: 64.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
