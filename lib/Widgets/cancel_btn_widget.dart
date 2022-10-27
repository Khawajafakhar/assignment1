import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';
import '../utility/app_strings.dart';
import '../utility/app_colors.dart';

class CancelBtnWidget extends StatelessWidget {
  const CancelBtnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: TextWidget(
        text: AppStrings.cancelBtnTxt,
        color: AppColors.txtFldBrdrClrGreen,
        size: 20,
        weight: FontWeight.w600,
      ),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            width: 2,
            color: AppColors.txtFldBrdrClrGreen,
            style: BorderStyle.solid,
          ),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 40, vertical: 15),
      ),
    );
  }
}
