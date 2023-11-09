import 'package:bmi/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyGender extends StatelessWidget {
  final String text1;
  final IconData icon;
  final bool selected;
  final Function() select;
  MyGender(
      {required this.text1,
      required this.icon,
      required this.select,
      required this.selected});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: select,
        splashColor: MyColors.backGroundColor,
        highlightColor: MyColors.backGroundColor,
        child: Container(
          margin: EdgeInsets.all(6),
          height: 180,
          decoration: BoxDecoration(
              color: selected == true
                  ? MyColors.SelectedContainerColor
                  : MyColors.containerColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: MyColors.textColor,
                size: 80,
              ),
              Text(
                text1,
                style: TextStyle(color: MyColors.textColor, fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
