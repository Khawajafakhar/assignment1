import 'package:assignment1/Widgets/text_widget.dart';
import 'package:assignment1/utility/app_assets.dart';
import 'package:assignment1/utility/app_colors.dart';
import 'package:assignment1/utility/app_strings.dart';
import 'package:flutter/material.dart';

class RecommendedItemWidget extends StatefulWidget {
  const RecommendedItemWidget({Key? key}) : super(key: key);

  @override
  State<RecommendedItemWidget> createState() => _RecommendedItemWidgetState();
}

class _RecommendedItemWidgetState extends State<RecommendedItemWidget> {
  var _isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 175,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.imgCheeseBalls),
                      ],
                    ),
                    Positioned(
                      right: -12,
                      top: -12,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _isFavourite = !_isFavourite;
                          });
                        },
                        icon: _isFavourite
                            ? const Icon(Icons.favorite)
                            : const Icon(Icons.favorite_border),
                        color: AppColors.appClrRed,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                    text: AppStrings.cheeseBallsTxt,
                    weight: FontWeight.w600,
                    size: 14),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: '£4.99',
                      size: 14,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Icon(
                            Icons.star_half_sharp,
                            color: AppColors.appClrYellow,
                            size: 15,
                          ),
                        ),
                        TextWidget(
                          text: '4.8',
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.txtFldBrdrClrGreen),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: TextWidget(text: 'Tesco',color: AppColors.txtFldBrdrClrGreen,size: 12,),
                      ),
                    ),const SizedBox(width: 3,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.txtFldBrdrClrGreen),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: TextWidget(text: 'Aldi',color: AppColors.txtFldBrdrClrGreen,size: 12,),
                      ),
                    ),const SizedBox(width: 3,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.txtFldBrdrClrGreen),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: TextWidget(text: 'Asda',color: AppColors.txtFldBrdrClrGreen,size: 12,),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
