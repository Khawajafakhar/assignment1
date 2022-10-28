import 'package:assignment1/Widgets/categories_item_widget.dart';
import 'package:assignment1/Widgets/new_product_item_widget.dart';
import 'package:assignment1/Widgets/recommeded_item.dart';
import 'package:assignment1/Widgets/text_widget.dart';
import 'package:assignment1/utility/app_colors.dart';
import 'package:flutter/material.dart';
import '../utility/app_assets.dart';
import '../Widgets/text_field_widget.dart';
import '../utility/app_strings.dart';
import '../Widgets/home_title_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const routeName = 'dashboard-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      bottom: false,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.txtFldBrdrClrGreen,
              child: const Icon(
                Icons.search,
                color: AppColors.appClrWhite,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 5,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(height: 60,
                        padding: EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                  onPressed: () {}, icon: const Icon(Icons.menu)),
                              TextWidget(
                                text: 'Menu',
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
            body: SingleChildScrollView(
              child: Column(
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
                    margin: const EdgeInsets.only(left: 15),
                    child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return const CategoriesItemWidget();
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const HomeTitleWidget(Text: AppStrings.recomendedTxt),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 215,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                        itemBuilder: (BuildContext ctx, int index) {
                          return const RecommendedItemWidget();
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const HomeTitleWidget(Text: AppStrings.newProductTxt),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (BuildContext ctx, int index) {
                        return NewProductItemWidget();
                      },
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
