import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({ Key? key }) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked, onChanged: (value){
         setState(() {
           isChecked=value!;
         });
    });
  }
}