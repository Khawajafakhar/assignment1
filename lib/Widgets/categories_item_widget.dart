import 'package:assignment1/utility/app_assets.dart';
import 'package:assignment1/utility/app_colors.dart';
import 'package:assignment1/utility/app_strings.dart';
import 'package:flutter/material.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 53,
          width: 53,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.txtFldBrdrClrGreen),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(AppAssets.imgCattCake),
        ),
        const SizedBox(height: 8,),
       const Padding(
          padding:  EdgeInsets.only(left: 4),
          child:  Text(AppStrings.cattDessertTxt),
        ),
      ],
    );
  }
}
