import 'package:flutter/material.dart';
import '../Model/user_data.dart';
import '../Widgets/text_widget.dart';
import '../utility/app_strings.dart';
import '../utility/app_colors.dart';
import '../utility/ui_helper.dart';
import '../Widgets/text_field_widget.dart';
import '../user_authentication/validation.dart';
import '../Widgets/password_field_widget.dart';

class FormWidget extends StatelessWidget {
   FormWidget({
    Key? key,
    required this.formkey,
    required this.data,
    required this.pass,
    required this.cnfrmPass,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final UserData data;
  final TextEditingController pass;
  final TextEditingController cnfrmPass;
  

  @override
  Widget build(BuildContext context) {
    FocusNode passFocusNode = new FocusNode();
    FocusNode cnfrmPassFocusNode = new FocusNode();
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 45),
      child: Form(
        key: formkey,
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
            TextFieldWidget(
              onSave: (val) {
                data.userName = val!;
              },
              validate: (value) {
                return Validation.isUserNameValid(value!);
              },
              hint: AppStrings.userNameHintTxt,
              action: TextInputAction.next,
            ),
            UiHelper.verticalSmall,
            TextWidget(
              text: AppStrings.emailTxt,
              size: 16,
              padding: const EdgeInsets.only(left: 11),
              color: AppColors.txtClrGrey,
            ),
            UiHelper.verticalXSmall,
            TextFieldWidget(
              onSave: (val) {
                data.email = val!;
              },
              validate: (val) {
                return Validation.isEmailValid(val!);
              },
              hint: AppStrings.emailHintTxt,
              action: TextInputAction.next,
            ),
            UiHelper.verticalSmall,
            TextWidget(
              text: AppStrings.birthdateTxt,
              size: 16,
              padding: const EdgeInsets.only(left: 11),
              color: AppColors.txtClrGrey,
            ),
            UiHelper.verticalXSmall,
            TextFieldWidget(
              onSave: (val) {
                data.birthdate = val!;
              },
              validate: (val) {
                return Validation.isBirthDateValid(val!);
              },
              hint: AppStrings.birthdateHintTxt,
              suffix: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
              action: TextInputAction.next,
              onFieldSubmitted: (val){
      FocusScope.of(context).requestFocus(passFocusNode);
              },
            ),
            UiHelper.verticalSmall,
            TextWidget(
              text: AppStrings.passwordTxt,
              size: 16,
              padding: const EdgeInsets.only(left: 11),
              color: AppColors.txtClrGrey,
            ),
            UiHelper.verticalXSmall,
            PasswordFieldWidget(
              onFieldsubmitted: (val){
                FocusScope.of(context).requestFocus(cnfrmPassFocusNode);
              },
              focusNode: passFocusNode,
              
              onSave: (val) {
                data.password = val!;
              },
              validate: (val) {
                return Validation.isPasswordValid(val!);
              },
              controller: pass,
              hint: AppStrings.passwordHintTxt,
              action: TextInputAction.next,
            ),
            UiHelper.verticalSmall,
            TextWidget(
              text: AppStrings.cnfrmpasswordTxt,
              size: 16,
              padding: const EdgeInsets.only(left: 11),
              color: AppColors.txtClrGrey,
            ),
            UiHelper.verticalXSmall,
            PasswordFieldWidget(
              focusNode: cnfrmPassFocusNode,
                controller: cnfrmPass,
                validate: (val) {
                  return Validation.isCnfrmPasswordValid(val!, pass);
                },
                hint: AppStrings.cnfrmpasswordHintTxt,
                action: TextInputAction.done),
          ],
        ),
      ),
    );
  }
}
