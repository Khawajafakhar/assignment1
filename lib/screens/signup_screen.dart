import '../screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../utility/app_colors.dart';
import '../utility/app_strings.dart';
import '../Widgets/create_account_container.dart';
import '../utility/app_assets.dart';
import '../Widgets/check_box_widget.dart';
import '../Model/user_data.dart';
import '../Widgets/form_widget.dart';
import '../Widgets/cancel_btn_widget.dart';
import '../Widgets/text_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController pass = TextEditingController();
  TextEditingController cnfrmPass = TextEditingController();
  UserData data = UserData();
  var check = false;

  @override
  Widget build(BuildContext context) {
    var scaffold = ScaffoldMessenger.of(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(AppAssets.imgTopNav,fit: BoxFit.cover,)),
                const CreateAccountContainer(),
                const SizedBox(
                  height: 32,
                ),
                FormWidget(
                  formkey: formkey,
                  data: data,
                  pass: pass,
                  cnfrmPass: cnfrmPass,
                ),
                const SizedBox(
                  height: 22,
                ),
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CheckBoxWidget(checked: (checked) {
                        check = checked;
                      }),
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
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CancelBtnWidget(),
                        ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              if (check != true) {
                                scaffold.showSnackBar(const SnackBar(
                                  content: Text(AppStrings.pleaseAgreeTxt),
                                  duration: Duration(seconds: 2),
                                ));
                                return;
                              }
                              formkey.currentState!.save();
                              print(data.userName);
                              print(data.email);
                              print(data.birthdate);
                              print(data.password);
                              Navigator.of(context)
                                  .pushNamed(DashboardScreen.routeName);
                            }
                          },
                          child: TextWidget(
                            text: AppStrings.createBtnTxt,
                            color: AppColors.appClrWhite,
                            size: 20,
                            weight: FontWeight.w600,
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15)),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
