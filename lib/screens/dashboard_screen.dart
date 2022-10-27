import 'package:assignment1/Widgets/categories_item_widget.dart';
import 'package:assignment1/Widgets/text_widget.dart';
import 'package:assignment1/utility/app_colors.dart';
import 'package:flutter/material.dart';
import '../utility/app_assets.dart';
import '../Widgets/text_field_widget.dart';
import '../utility/app_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const routeName = 'dashboard-screen';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.imgTopNav),
          const SizedBox(height: 13),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset(AppAssets.logoImg)),
          const SizedBox(height: 31),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFieldWidget(
                preffix: const Icon(Icons.search),
                hint: AppStrings.lookingForTxt,
                prefixColor: AppColors.txtFldBrdrClrLightGrey,
              )),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: TextWidget(
              text: AppStrings.allCatTxt,
              weight: FontWeight.w600,
              size: 18,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(left: 10),
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return const CategoriesItemWidget();
                },
                itemCount: 10,
                scrollDirection: Axis.horizontal),
          )
        ],
      )),
    );
  }
}
