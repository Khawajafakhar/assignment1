import '../utility/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  // const TextFieldWidget({
  //   Key? key,
  // }) : super(key: key);
  String? hint;
  TextFieldWidget({this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 28),
        hintText: hint,
        hintStyle: hintStyle,
        enabledBorder: getEnableBorder,
      ),
    );
  }

  TextStyle get hintStyle {
    return const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w300,
      );
  }

  OutlineInputBorder get getEnableBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(width: 1, color: AppColors.txtFldBrdrClrLightGrey),
      );
}
