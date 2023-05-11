
import 'package:flutter/material.dart';

import '../widgets/costmAppbar.dart';

class DietTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:customeAppBar(tex1:"الرئيسية" ,tex2:" السعرات" ,tex3:" sing",tex4: 'نظام' ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[

          _buildCard('الأحد','وجبة الإفطار 4 بيض مسلوق، خضار مشكلة، 1 رغيف خبز صغير','','',),
          _buildCard('الأحد', 'وجبة الإفطار', '4 بيض مسلوق، خضار مشكلة، 1 رغيف خبز صغير', '350'),
          _buildCard('الأحد', 'وجبة الغداء', '200 غرام دجاج مشوي، بروكلي مشوي، 1/2 كوب أرز بني', '400'),
          _buildCard('الأحد', 'وجبة العشاء', '200 غرام سمك مشوي، سلطة خضراء مشكلة', '300'),
          _buildCard('الاثنين', 'وجبة الإفطار', '1 كوب حليب قليل الدسم، 1/2 كوب عصير برتقال طازج، 1 رغيف خبز صغير', '250'),
          _buildCard('الاثنين', 'وجبة الغداء', 'كوب سلطة+كبسة دجاج مع خضار', '400'),
          _buildCard('الاثنين', 'وجبة العشاء', '200 غرام لحم بقري مشوي، بطاطس مشوية، سلطة خضراء مشكلة', '350'),
          _buildCard('الثلاثاء', 'وجبة الإفطار', '1 كوب حليب قليل الدسم، 1/2 كوب عصير فراولة، 1 رغيف خبز صغير', '250'),
          _buildCard('الثلاثاء', 'وجبة الغداء', '200 غرام دجاج مشوي، خضار مشكلة مطبوخة في الفرن، 1/2 كوب أرز بني', '400'),
          _buildCard('الثلاثاء', 'وجبة العشاء', '200 غرام سمك مشوي، سلطة خضراء مشكلة', '300'),
          _buildCard('الأربعاء', 'وجبة الإفطار', '1 كوب حليب قليل الدسم، 1/2 كوب عصير تفاح، 1 رغيف خبز صغير', '250'),
          _buildCard('الأربعاء', 'وجبة الغداء', '200 غرام دجاج مشوي، خضار مشكلة مطبوخة في الفرن، 1/2 كوب أرز بني', '400'),
          _buildCard('الأربعاء', 'وجبة العشاء', '200 غرام لحم بقري مشوي، بطاطس مشوية، سلطة خضراء مشكلة', '350'),

_buildCard('الخميس', 'وجبة الإفطار', '1 كوب حليب قليل الدسم، 1/2 كوب عصير مانجو، 1 رغيف خبز صغير', '250'),
          _buildCard('الخميس', 'وجبة الغداء', '200 غرام سمك مشوي، خضار مشكلة مطبوخة في الفرن، 1/2 كوب أرز بني', '400'),
          _buildCard('الخميس', 'وجبة العشاء', '200 غرام دجاج مشوي، سلطة خضراء مشكلة', '300'),
          _buildCard('الجمعة', 'وجبة الإفطار', '1 كوب حليب قليل الدسم، 1/2 كوب عصير تفاح، 1 رغيف خبز صغير', '250'),
          _buildCard('الجمعة', 'وجبة الغداء', '200 غرام دجاج مشوي، بروكلي مشوي، 1/2 كوب أرز بني', '400'),
          _buildCard('الجمعة', 'وجبة العشاء', '200 غرام لحم بقري مشوي، بطاطس مشوية، سلطة خضراء مشكلة', '350'),
          _buildCard('السبت', 'وجبة الإفطار', '4 بيض مسلوق، خضار مشكلة، 1 رغيف خبز صغير', '350'),
          _buildCard('السبت', 'وجبة الغداء', '200 غرام دجاج مشوي، بروكلي مشوي، 1/2 كوب أرز بني', '400')
               ]));
  }

  Widget _buildCard(String day, String meal, String food, String calories) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          title: Text(
            day,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                meal,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5.0),
              Text(food),
              SizedBox(height: 5.0),
              Text(calories + ' kcal'),
            ],
          ),
        ),
      ),
    );
  }
}
