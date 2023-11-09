import 'package:bmi/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyResult extends StatelessWidget {
  final String TitleResult;
  final String Bmi;
  final String text;
  MyResult({required this.TitleResult, required this.Bmi, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.backGroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: MyColors.appBarColor,
          title: Text(
            "Your Result",
            style: TextStyle(
                color: MyColors.textColor, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: MyColors.appBarColor,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: MyColors.containerColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      TitleResult,
                      style: TextStyle(
                          color: TitleResult == "Normal"
                              ? Colors.green
                              : Colors.red,
                          fontSize: 30),
                    ),
                    Text(
                      Bmi,
                      style: TextStyle(color: MyColors.textColor, fontSize: 60),
                    ),
                    Text(
                      text,
                      style: TextStyle(color: MyColors.textColor, fontSize: 20),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
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
                      "RE-CALCULATE",
                      style: TextStyle(
                          color: MyColors.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
