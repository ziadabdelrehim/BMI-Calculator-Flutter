import 'package:bmi/calculation.dart';
import 'package:bmi/customWid/ageBox.dart';
import 'package:bmi/customWid/gender.dart';
import 'package:bmi/customWid/slidebar.dart';
import 'package:bmi/result.dart';
import 'package:bmi/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '';

class MyBmi extends StatefulWidget {
  const MyBmi({Key? key}) : super(key: key);

  @override
  State<MyBmi> createState() => _MyBmiState();
}

class _MyBmiState extends State<MyBmi> {
  bool selectedMale = false;
  bool selectedFemale = false;
  String gender = "";
  double height = 120;
  int weight = 50;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backGroundColor,
      appBar: AppBar(
        shadowColor: MyColors.appBarColor,
        title: Text(
          "BMI Calculator",
          style:
              TextStyle(color: MyColors.textColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: MyColors.appBarColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                MyGender(
                    text1: "MALE",
                    icon: Icons.male,
                    select: () {
                      setState(() {
                        selectedMale = true;
                        selectedFemale = false;
                      });
                    },
                    selected: selectedMale),
                MyGender(
                  text1: "FEMALE",
                  icon: Icons.female,
                  select: () {
                    setState(() {
                      selectedMale = false;
                      selectedFemale = true;
                    });
                  },
                  selected: selectedFemale,
                )
              ],
            ),
          ),
          MyHeight(
              height: height,
              slide: ((newHeight) {
                setState(() {
                  height = newHeight;
                });
              })),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                MyAge(
                  text1: "WEIGHT",
                  text2: weight.toString(),
                  plus: () {
                    setState(() {
                      weight++;
                    });
                  },
                  minus: () {
                    setState(() {
                      if (weight > 0) {
                        weight--;
                      }
                    });
                  },
                ),
                MyAge(
                  text1: "AGE",
                  text2: age.toString(),
                  plus: () {
                    setState(() {
                      age++;
                    });
                  },
                  minus: () {
                    setState(() {
                      if (age > 0) {
                        age--;
                      }
                    });
                  },
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              if (selectedFemale == true || selectedMale == true) {
                Calculation c1 = Calculation();
                c1.getBmi(weight, height);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyResult(
                            TitleResult: c1.titleResult,
                            Bmi: c1.bmiResult.ceil().toString(),
                            text: c1.textResult,
                          )),
                );
              } else {}
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.buttonsColor,
              ),
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
