import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sport/view/homeScreen.dart';

import 'view/untitled.dart';

class Sport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) {
  
    return  GetMaterialApp(
      locale: Locale('ar','SA'),
        debugShowCheckedModeBanner: false,
        home: DemoT10SignIn()
    );
  }
    );}
}