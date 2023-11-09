import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../style.dart';

class MyAge extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() plus;
  final Function() minus;

  MyAge(
      {required this.text1,
      required this.text2,
      required this.plus,
      required this.minus});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6),
        height: 180,
        decoration: BoxDecoration(
            color: MyColors.containerColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text1,
                style: TextStyle(color: MyColors.textColor, fontSize: 20)),
            Text(text2,
                style: TextStyle(color: MyColors.textColor, fontSize: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: plus,
                  child: CircleAvatar(
                    backgroundColor: MyColors.circelAvColor,
                    child: Icon(
                      Icons.add,
                      color: MyColors.textColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: minus,
                  child: CircleAvatar(
                    backgroundColor: MyColors.circelAvColor,
                    child: Icon(
                      Icons.remove,
                      color: MyColors.textColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
