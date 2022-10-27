import '../utility/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  // const TextFieldWidget({
  //   Key? key,
  // }) : super(key: key);
  final String? hint;
  final Widget? suffix;
  final Widget? preffix;
  final TextInputAction? action;
  final bool? obsecure;
  final String? Function(String?)? validate;
  final TextEditingController? controller;
  final void Function(String?)? onSave;
  Color? prefixColor;

  TextFieldWidget({
    this.hint,
    this.suffix,
    this.action,
    this.obsecure=false,
    this.validate,
    this.controller,
    this.onSave,
    this.preffix,
    this.prefixColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      controller: controller,
      validator: validate,
      textInputAction: action,
      obscureText: obsecure!,
      decoration: InputDecoration(
        prefixIcon: preffix,
        prefixIconColor: prefixColor,
          suffixIcon: suffix,
          contentPadding: const EdgeInsets.only(left: 28),
          hintText: hint,
          hintStyle: hintStyle,
          enabledBorder: getEnableBorder,
          errorBorder: getErrorBorder,
          focusedBorder: getFocusedBorder,
          focusedErrorBorder: getErrorBorder),
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
        borderSide:
            BorderSide(width: 1, color: AppColors.txtFldBrdrClrLightGrey),
      );

  OutlineInputBorder get getFocusedBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(width: 1, color: AppColors.txtFldBrdrClrGreen),
      );
  OutlineInputBorder get getErrorBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(width: 1, color: AppColors.appClrRed),
      );
}
