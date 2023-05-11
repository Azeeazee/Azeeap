
import 'package:flutter/material.dart';

class MealPlan {
  String day;
  List<String> meals;

  MealPlan({required this.day, required this.meals});
}

class DietPlanScreen extends StatefulWidget {
  @override
  _DietPlanScreenState createState() => _DietPlanScreenState();
}

class _DietPlanScreenState extends State<DietPlanScreen> {
  List<MealPlan> mealPlans = [
    MealPlan(
      day: 'الأحد',
      meals: ['فطور - توست وجبن', 'غداء - سلطة الخضار والدجاج', 'عشاء - سلطة الفاكهة'],
    ),
    MealPlan(
      day: 'الإثنين',
      meals: ['فطور - شوفان بالحليب', 'غداء - سمك مشوي مع الخضار', 'عشاء - سلطة الفاكهة'],
    ),
    MealPlan(
      day: 'الثلاثاء',
      meals: ['فطور - بيض على الطريقة الإسبانية', 'غداء - صدر دجاج مشوي مع الخضار', 'عشاء - حساء الفطر'],
    ),
    MealPlan(
      day: 'الأربعاء',
      meals: ['فطور - توست مع الزبدة والعسل', 'غداء - سلطة الدجاج والأفوكادو', 'عشاء - سمك مقلي'],
    ),
    MealPlan(
      day: 'الخميس',
      meals: ['فطور - شوفان بالفواكه', 'غداء - سلطة السلطعون والطماطم', 'عشاء - سلطة الفواكه'],
    ),
    MealPlan(
      day: 'الجمعة',
      meals: ['فطور - بيض مسلوق وتوست', 'غداء - سلطة الدجاج والفواكه', 'عشاء - سلطة الفاكهة'],
    ),
    MealPlan(
      day: 'السبت',
      meals: ['فطور - توست مع العسل والزبدة اللوز', 'غداء - سمك مقلي', 'عشاء - حساء الخضار'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نظام الحمية الغذائي'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 3),
        ),
        itemCount: mealPlans.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  mealPlans[index].day,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: mealPlans[index].meals.length,
                    itemBuilder: (BuildContext context, int index2) {
                      return ListTile(
                        title: Text(mealPlans[index].meals[index2]),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
