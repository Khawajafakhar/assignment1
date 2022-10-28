import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';
import '../utility/app_strings.dart';
import '../utility/app_colors.dart';

class HomeTitleWidget extends StatelessWidget {
   const HomeTitleWidget({
    Key? key,this.Text
  }) : super(key: key);
 final String? Text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: Text,
            weight: FontWeight.w600,
            size: 18,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: AppStrings.viewAllTxt,
                    color: AppColors.appClrYellow),
                const Icon(
                  Icons.arrow_right_alt,
                  color: AppColors.appClrYellow,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
