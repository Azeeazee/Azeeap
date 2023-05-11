import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';import '../view/calculate.dart';



import '../view/eit.dart';
import '../view/homeScreen.dart';
import '../view/untitled.dart';
AppBar customeAppBar({required String tex1, required String tex2,required String tex3,required String tex4}) {
  return AppBar(
      backgroundColor: const Color(0xff455A64),
      actions:[ Row(
        children: [
          Image.asset('assets/images/sport1.jpg',
            fit: BoxFit.cover,
            width: 60.w,
            height: 50.h,
          ),
          Image.asset('assets/images/sport2.jpeg',
            fit: BoxFit.cover,
            width: 40.w,
            height: 50.h,
          ),
          TextButton(
              onPressed: (){Get.offAll(HomeScreen(),opaque: true);}, child: Text(tex1, style:TextStyle(color: Colors.white,fontSize:8)
          )
          )
          ,
          TextButton(
              onPressed: (){Get.offAll(DemoT10SignIn(),opaque: true);}, child: Text(tex3, style:TextStyle(color: Colors.white,fontSize:8)
          )),

          TextButton(
              onPressed: (){Get.to(BMRCalculator(),opaque: true);}, child: Text(tex2, style:TextStyle(color: Colors.white,fontSize:8)
          )),
          TextButton(
              onPressed: (){Get.to(DietTable(),opaque: true);}, child: Text(tex4, style:TextStyle(color: Colors.white,fontSize:8)
          )),




        ],

      ),]
  );}