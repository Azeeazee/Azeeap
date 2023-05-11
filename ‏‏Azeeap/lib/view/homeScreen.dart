import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/costmAppbar.dart';

class HomeScreen extends StatefulWidget {  @override
  State<StatefulWidget> createState() => _stes();
//return Scaffold();
}
class _stes extends  State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
 //0x455A64
    //   throw UnimplementedError();
    return Scaffold(
        appBar:customeAppBar(tex1:"الرئيسية" ,tex2:" السعرات" ,tex3:" sing",tex4: 'نظام' ),
      body: Center(
        child: Column(
          children:[

            Container(
              width: 150.w,
            height: 200.h,

            padding:EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(image: AssetImage('assets/images/rrr.jpeg'))
            )
            ,
            child:Center(
            )

            ),
          Container(
            width: 500,
            height: 300,
            child: Text("تساعد التمارين الرياضية من يعانون من الاكتئاب بنوعيه؛ الخفيف والمتوسط على تجاوز محنتهم والشعور بتحسن كبير وملحوظ،وتعد علاجاً طبيعياً مضاداً للقلق، إذ بذل المجهود البدني من شأنه أن يعزز طاقة الجسم ، وعند ممارسة التمارين الرياضية؛ يتم إطلاق الإندروفين ليعمل على إرخاء العضلات وتخفيف التوتر ، ممارسة التمارين الرياضية بانتظام ، يرفع مستوى الدوبامين والنورأدرينالين والسيروتونين في الدماغ، مما يعزز الشعور بالراحة والسعادة وبالتالي التركيز والانتباه."
                , style:TextStyle(color: Colors.black,fontSize:20)),) ],
        ),
      )) ;
  }

}
