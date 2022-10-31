import 'package:flutter/material.dart';
import '../utility/app_colors.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppColors.txtFldBrdrClrGreen,
      child: const Icon(
        Icons.search,
        color: AppColors.appClrWhite,
      ),
    );
  }
}
