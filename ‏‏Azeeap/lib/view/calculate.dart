
import 'package:flutter/material.dart';

import '../widgets/costmAppbar.dart';

class BMRCalculator extends StatefulWidget {
  @override
  _BMRCalculatorState createState() => _BMRCalculatorState();
}

class _BMRCalculatorState extends State<BMRCalculator> {
  String? gender = 'ذكر';
  int age = 25;
  double height = 170.0;
  double weight = 70.0;
  String activityLevel = 'خمول';

  final List<String> genderList = ['ذكر', 'انثئ'];
  final List<String> activityLevelList = ['خمول', 'متوسط النشاط', 'نشيط', 'حامل'];

  double bmr = 0.0;
  double tdee = 0.0;

  void _calculateBMR() {
    if (gender == 'ذكر') {
      bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    } else {
      bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
    }
  }

  void _calculateTDEE() {
    if (activityLevel == 'خمول') {
      tdee = bmr * 1.2;
    } else if (activityLevel == 'متوسط النشاط') {
      tdee = bmr * 1.55;
    } else if (activityLevel == 'نشيط') {
      tdee = bmr * 1.725;
    } else if (activityLevel == 'حامل') {
      tdee = bmr * 1.5;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customeAppBar(tex1:"الرئيسية" ,tex2:" السعرات" ,tex3:" sing",tex4: 'نظام' ),
      body: SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child: Padding(

          padding: const EdgeInsets.all(16.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection:TextDirection.rtl,
            children: [
              Text(
                'الجنس',
                style: TextStyle(fontSize: 18.0),
              ),
              DropdownButton(
                value: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
});
                },
                items: genderList.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'العمر',
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    age = int.parse(value);
                  });
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'الطول (cm)',
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    height = double.parse(value);
                  });
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'الوزن (kg)',
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    weight = double.parse(value);
                  });
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'نوع النشاط',
                style: TextStyle(fontSize: 18.0),
              ),
              DropdownButton(
                value: activityLevel,
                onChanged: (value) {
                  setState(() {
                    activityLevel = value!;
                  });
                },
                items: activityLevelList.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                child: Text('Calculate'),
                onPressed: () {
                  setState(() {
                    _calculateBMR();
                    _calculateTDEE();
                  });
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'BMR: $bmr',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'TDEE: $tdee',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
