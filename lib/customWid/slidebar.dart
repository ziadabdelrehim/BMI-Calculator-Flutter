import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../style.dart';

class MyHeight extends StatelessWidget {
  final double height;
  final Function(double newHeight) slide;
  MyHeight({required this.height, required this.slide});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13),
      height: 160,
      decoration: BoxDecoration(
          color: MyColors.containerColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "HEIGHT",
            style: TextStyle(color: MyColors.textColor, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(height.ceil().toString(),
                  style: TextStyle(color: MyColors.textColor, fontSize: 50)),
              Text("cm",
                  style: TextStyle(color: MyColors.textColor, fontSize: 20)),
            ],
          ),
          Slider(
            min: 100,
            max: 200,
            value: height,
            onChanged: slide,
            activeColor: MyColors.buttonsColor,
            inactiveColor: MyColors.textColor,
          )
        ],
      ),
    );
  }
}
