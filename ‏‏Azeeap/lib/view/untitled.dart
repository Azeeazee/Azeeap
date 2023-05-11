import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/costmAppbar.dart';
import 'homeScreen.dart';
//+967773879715 للتواصل

class DemoT10SignIn extends StatefulWidget {
  static String tag = '/DemoT10SignIn';

  @override
  DemoT10SignInState createState() => DemoT10SignInState();
}

class DemoT10SignInState extends State<DemoT10SignIn> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:customeAppBar(tex1:"الرئيسية" ,tex2:" السعرات" ,tex3:" sing",tex4: 'نظام' ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,

          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

              SizedBox(height: 4),
              Text("اسم المستخدم", style:TextStyle(fontSize:20)),
             TextField(
               decoration: InputDecoration(border: OutlineInputBorder()),
             ),
              SizedBox(height: 58),
              Text("كلمة السر", style:TextStyle(fontSize:20)),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 56),
             MaterialButton(color:Color(0xff455A64),
               onPressed: (){Get.to(HomeScreen(),opaque: true);}, child:Text("تسجيل دخول", style:TextStyle(color: Color(0xffffffff),fontSize:30)),),
              SizedBox(height: 67),
              TextButton(onPressed: (){}, child:Text("هل نسيت كله السر؟"),),

            ],
          ),
        ),
      ),
    );
  }
}
