import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Utils/colors.dart';
import 'package:flutter_task/Utils/images.dart';
import 'package:google_fonts/google_fonts.dart';

class TapbarWidget extends StatefulWidget {
  const TapbarWidget({Key? key}) : super(key: key);

  @override
  State<TapbarWidget> createState() => _TapbarWidgetState();
}

class _TapbarWidgetState extends State<TapbarWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var _currentIndex;
    TabController tabController = TabController(length: 4, vsync: this);
    return Column(
      children: [
        TabBar(

            physics: _currentIndex,
            controller: tabController,
            labelStyle:
                GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),
            unselectedLabelStyle:
                TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Color(0xffB7C7C8),
            labelColor: Colors.black,

            // Tabs
            tabs: [
              Tab(

                height: 100,
                icon: Container(
                    height: 50.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ImageIcon(
                      AssetImage(ImagePath.vector1),
                      color: Colors.white,
                    )),
                text: 'Coffee',
              ),
              Tab(
                height: 100,
                icon: Container(
                    height: 50.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: Color(0xffB7C7C8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ImageIcon(
                      AssetImage(ImagePath.vector2),
                      color: Colors.white,
                    )),
                text: 'Snacks',
              ),
              Tab(
                height: 100,
                icon: Container(
                    height: 50.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: Color(0xffB7C7C8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ImageIcon(
                      AssetImage(ImagePath.vector3),
                      color: Colors.white,
                    )),
                text: 'Drink',
              ),
              Tab(
                height: 100,
                icon: Container(
                    height: 50.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: Color(0xffB7C7C8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ImageIcon(
                      AssetImage(ImagePath.vector4),
                      color: Colors.white,
                    )),
                text: 'Vegan',
              ),
            ]),
        SizedBox(
          height: 5.h,
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            Container(),
            Container(),
            Container(),
            Container(),
          ]),
        ),
      ],
    );
  }
}
