import 'package:assignment1/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key, required this.checked}) : super(key: key);
  final Function(bool)? checked;
  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        onChanged: (value) {
          widget.checked!(value!);
          setState(() {
            isChecked = value;
          });
        },
        checkColor: AppColors.appClrWhite,
        activeColor: AppColors.txtFldBrdrClrGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)));
  }
}
