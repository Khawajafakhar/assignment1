import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';
import '../utility/app_colors.dart';
import '../utility/app_assets.dart';
import '../utility/app_strings.dart';

class CreateAccountContainer extends StatelessWidget {
  const CreateAccountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          TextWidget(
            text: AppStrings.createAcntTxt,
            color: AppColors.txtColorBlck,
            size: 24,
            weight: FontWeight.w600,
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
                child: Image.asset(
              AppAssets.ellipse,
              fit: BoxFit.cover,
            )),
          ),
          const SizedBox(
            height: 7,
          ),
          TextWidget(
            text: AppStrings.slctAvatarTxt,
            color: AppColors.txtColorBlck,
            size: 16,
            
          ),
        ],
      ),
    );
  }
}
