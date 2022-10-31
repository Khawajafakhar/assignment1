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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Container(
            child: Row(
              children: [
                Expanded(flex: 1,child: Container(child: Image.asset(AppAssets.imgVeggieWendyProd))),
                Expanded(flex: 3,
                  child: Container(
                    child: Column(
                  //    mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        // Padding(
                        //  padding: const EdgeInsets.only(top: 8.0),
                        //   child: 
                            Container(
                              height: 30,
                            //  width: 240,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: TextWidget(
                                        text: 'Veggie wendy the worm',
                                        size: 14,
                                        weight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                       right: 8,bottom: 2
                                      ),
                                      child: IconButton(
                                        color: AppColors.appClrRed,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: () {
                                          setState(() {
                                            _isFav = !_isFav;
                                          });
                                        },
                                        icon: _isFav
                                            ? const Icon(Icons.favorite)
                                            : const Icon(Icons.favorite_border),
                                      ),
                                    )
                                  ],
                                                // ),
                                               ),
                            ),
                           
                          
                        SizedBox(
                            width: 170,
                            child: TextWidget(
                              text:
                                  'Lorem ipsum is a placeholder text used to demonstrate the visual',
                              size: 10,
                              color: AppColors.txtClrGrey,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: '£4.99 ',
                              size: 14,
                              weight: FontWeight.w600,
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
                                    size: 14,
                                  ),]),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColors.txtFldBrdrClrGreen),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.symmetric(horizontal: 3),
                                            child: TextWidget(
                                              text: 'Tesco',
                                              color: AppColors.txtFldBrdrClrGreen,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3.5,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColors.txtFldBrdrClrGreen),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.symmetric(horizontal: 3),
                                            child: TextWidget(
                                              text: 'Aldi',
                                              color: AppColors.txtFldBrdrClrGreen,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3.5,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColors.txtFldBrdrClrGreen),
                                            borderRadius: BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.symmetric(horizontal: 3),
                                            child: TextWidget(
                                              text: 'Asda',
                                              color: AppColors.txtFldBrdrClrGreen,
                                              size: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                
                              
                            
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
