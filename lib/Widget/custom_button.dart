import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Utils/colors.dart';

class CustomButton extends StatelessWidget {
 Icon icon;
 VoidCallback onTap;
   CustomButton({Key? key,required this.icon,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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

      ),
      child: IconButton(onPressed: onTap, icon: icon,color: primaryColor,),
    );
  }
}
