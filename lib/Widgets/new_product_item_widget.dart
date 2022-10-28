import 'package:assignment1/utility/app_assets.dart';
import 'package:assignment1/utility/app_colors.dart';
import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';

class NewProductItemWidget extends StatefulWidget {
  const NewProductItemWidget({Key? key}) : super(key: key);

  @override
  State<NewProductItemWidget> createState() => _NewProductItemWidgetState();
}

class _NewProductItemWidgetState extends State<NewProductItemWidget> {
  var _isFav = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: double.infinity,
          child: Stack(children: [
            Row(
              children: [
                Image.asset(AppAssets.imgVeggieWendyProd),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TextWidget(
                          text: 'Veggie wendy the worm',
                          size: 14,
                          weight: FontWeight.w600,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _isFav = !_isFav;
                              });
                            },
                            icon: _isFav
                                ? const Icon(Icons.favorite)
                                : const Icon(Icons.favorite_border),
                            color: AppColors.appClrRed,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                        width: 180,
                        child: TextWidget(
                          text:
                              'Lorem ipsum is a placeholder text used to demonstrate the visual',
                          size: 10,
                          color: AppColors.txtClrGrey,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        TextWidget(
                          text: '£4.99 ',
                          size: 14,
                          weight: FontWeight.w600,
                        ),
                        const SizedBox(width: 4,),
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
                          text: '4.8',size: 14,
                        ),
                        const SizedBox(width: 16,),
                             Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.txtFldBrdrClrGreen),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: TextWidget(text: 'Tesco',color: AppColors.txtFldBrdrClrGreen,size: 12,),
                      ),
                    ),const SizedBox(width: 3.5,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.txtFldBrdrClrGreen),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: TextWidget(text: 'Aldi',color: AppColors.txtFldBrdrClrGreen,size: 12,),
                      ),
                    ),const SizedBox(width: 3.5,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.txtFldBrdrClrGreen),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: TextWidget(text: 'Asda',color: AppColors.txtFldBrdrClrGreen,size: 12,),
                      ),
                    )
                  ],
                )
                      ],
                    )
                      ],
                    )
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
