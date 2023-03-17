import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/Controller/user_data_controller.dart';
import 'package:flutter_task/Model/user_data_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;
import '../../Utils/colors.dart';
import '../../Utils/images.dart';

class AllUser extends StatefulWidget {
  const AllUser({Key? key}) : super(key: key);

  @override
  State<AllUser> createState() => _AllUserState();
}

class _AllUserState extends State<AllUser> {

  List<UserDataModel> postList = [] ;

  Future<List<UserDataModel>> getPostApi ()async{
    final resposne = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users')) ;
    var data = jsonDecode(resposne.body.toString());
    if(resposne.statusCode == 200){
      postList.clear();
      for(var i in data){
        postList.add(UserDataModel.fromJson(i));
      }
      return postList ;
    }else {
      return postList ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
              "All Users",
              style: GoogleFonts.montserrat(
                  color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(ImagePath.person),
                    color: Color(0xff667C8A),
                  ))
            ],
          ),
          body: FutureBuilder(
            future: getPostApi(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Text("loading");
              }else{
                return ListView.builder(
                  //itemCount: postList.length.toString(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(ImagePath.image5),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postList![index].name.toString(),  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  postList[index].email.toString(),
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor),
                                ),

                              ],
                            )
                          ],
                        ),
                      );
                    }
                );
              }
            },
          )





      );
  }
}
