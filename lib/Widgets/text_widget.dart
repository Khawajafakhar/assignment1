import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  // const TextWidget({
  //   Key? key,
  // }) : super(key: key);
  String? text;
  Color? color;
  double? size;
  FontWeight? weight;
  String font;
  EdgeInsets? padding;
  TextWidget({
    this.text,
    this.color,
    this.size,
    this.weight,
    this.font='Poppins',
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        text!,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight,
          fontFamily: font,
        ),
      ),
    );
  }
}
