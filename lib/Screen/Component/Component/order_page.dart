import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Utils/colors.dart';
import 'package:flutter_task/Widget/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/images.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      Get.back();
                    }),
                CustomButton(
                    icon: Icon(Icons.favorite_outline_rounded),
                    onTap: () {
                      Get.back();
                    }),
              ],
            ),
          ),
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.vertical(top: Radius.circular(100))
            ),
            child: Image.asset(ImagePath.image4),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Chipotle Cheesy Chicken",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff202C59)),
          )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "A signature flame-grilled chicken \n  patty topped with smoked beef \nA signature flame-grilled chicken \n  patty topped with smoked beef",
            style: GoogleFonts.poppins(
                fontSize: 15, fontWeight: FontWeight.w400, color: primaryColor),
          )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: primaryColor),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "\$41.90",
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff202C59)),
                    ),
                  ],
                ),
                Container(
                  height: 65.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage(ImagePath.cart),color: Colors.white,),
                      SizedBox(width: 10,),
                      Text(
                        "Go  to Cart",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
