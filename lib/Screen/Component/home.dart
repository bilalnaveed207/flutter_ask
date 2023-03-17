import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Screen/Component/Component/order_page.dart';
import 'package:flutter_task/Utils/colors.dart';
import 'package:flutter_task/Utils/images.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Component/tabbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xffE5E5E5).withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5).withOpacity(0.2),
        elevation: 0,
        centerTitle: true,
        brightness: Brightness.light,
        leading: ImageIcon(
          AssetImage(ImagePath.menuicon),
          color: Colors.black,
        ),
        title: Text(
          "welcome",
          style: GoogleFonts.montserrat(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(ImagePath.image1),
              radius: 18,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Lets find your \nFood!",
                  style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
              ),
              Container(
                height: 120,
                width: double.infinity,
                child: TapbarWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    ),
                    Text(
                      "view all >",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: primaryColor),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Get.to(OrderPage());

                },
                child: Stack(
                  children: [
                    Container(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 28),
                        height: 230.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                5.0, // Move to right 5  horizontally
                                5.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            children: [
                              Container(
                                height: 140.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Chipotle Chessy Chicken",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: primaryColor),
                                  ),
                                  Text(
                                    "\$20.95",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: primaryColor),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                        child: Image(image: AssetImage(ImagePath.image2),height: 180,))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                child: Text(
                  "Popular items",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Image.asset(ImagePath.image3),
                    ),
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Chipotle Chessy Chicken",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "\$68.25",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        )

                      ],
                    ),
                    FavoriteButton(
                      iconSize: 40,
                      isFavorite: true,
                      // iconDisabledColor: Colors.white,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
