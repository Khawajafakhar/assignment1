import 'package:assignment1/utility/app_colors.dart';
import 'package:assignment1/utility/app_strings.dart';
import 'package:flutter/material.dart';
import '../Widgets/create_account_container.dart';
import '../utility/app_assets.dart';
import '../Widgets/text_widget.dart';
import '../Widgets/text_field_widget.dart';
import '../utility/ui_helper.dart';
import '../Widgets/check_box_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.imgTopNav),
            const CreateAccountContainer(),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 45),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: AppStrings.userNameTxt,
                      size: 16,
                      padding: const EdgeInsets.only(left: 11),
                      color: AppColors.txtClrGrey,
                    ),
                    UiHelper.verticalXSmall,
                    TextFieldWidget(hint: AppStrings.userNameHintTxt),
                    UiHelper.verticalSmall,
                    TextWidget(
                      text: AppStrings.emailTxt,
                      size: 16,
                      padding: const EdgeInsets.only(left: 11),
                      color: AppColors.txtClrGrey,
                    ),
                    UiHelper.verticalXSmall,
                    TextFieldWidget(hint: AppStrings.emailHintTxt),
                    UiHelper.verticalSmall,
                    TextWidget(
                      text: AppStrings.birthdateTxt,
                      size: 16,
                      padding: const EdgeInsets.only(left: 11),
                      color: AppColors.txtClrGrey,
                    ),
                    UiHelper.verticalXSmall,
                    TextFieldWidget(hint: AppStrings.birthdateHintTxt),
                    UiHelper.verticalSmall,
                    TextWidget(
                      text: AppStrings.passwordTxt,
                      size: 16,
                      padding: const EdgeInsets.only(left: 11),
                      color: AppColors.txtClrGrey,
                    ),
                    UiHelper.verticalXSmall,
                    TextFieldWidget(hint: AppStrings.passwordHintTxt),
                    UiHelper.verticalSmall,
                    TextWidget(
                      text: AppStrings.cnfrmpasswordTxt,
                      size: 16,
                      padding: const EdgeInsets.only(left: 11),
                      color: AppColors.txtClrGrey,
                    ),
                    UiHelper.verticalXSmall,
                    TextFieldWidget(hint: AppStrings.cnfrmpasswordHintTxt),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CheckBoxWidget(),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: AppStrings.byCreatingTxt,
                        style: TextStyle(color: AppColors.txtClrGrey)),
                    TextSpan(
                        text: AppStrings.privacyPolicyTxt,
                        style: TextStyle(
                          color: AppColors.txtFldBrdrClrGreen,
                          decoration: TextDecoration.underline,
                        )),
                    TextSpan(
                        text: AppStrings.andTxt,
                        style: TextStyle(color: AppColors.txtClrGrey)),
                    TextSpan(
                        text: AppStrings.termsTxt,
                        style: TextStyle(
                          color: AppColors.txtFldBrdrClrGreen,
                          decoration: TextDecoration.underline,
                        )),
                  ])),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              width: 320,
              child: Row(children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
