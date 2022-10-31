import 'package:assignment1/utility/app_colors.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 122,
      width: double.infinity,
      child: Card(
          child: Container(
        child: Row(
        //  crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              color: AppColors.appClrRed,
              child: Text('Red'),
            )),
            Expanded(
                flex: 3,
                child: Container(
                    color: AppColors.appClrYellow,
                    child: Column(
                      children: [
                        Container(
                          color: AppColors.appClrWhite,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Padding(padding: EdgeInsets.only(top: 8),child: Text('yellow child in row')),Text('heart')],
                          ),
                          
                        )
                      ],
                    )))
          ],
        ),
      )),
    ));
  }
}
