import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';
import '../utility/app_colors.dart';
import '../utility/app_strings.dart';

class BottomAppBarWidget extends StatelessWidget {
  int index;
  ValueChanged<int> selectedIndex;
  BottomAppBarWidget({required this.index, required this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: const Icon(Icons.no_cell)),
    );
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            getAppBarItem(
                index: 0,
                icon: const Icon(
                  Icons.menu,
                ),
                label: AppStrings.menuTxt),
            getAppBarItem(
                index: 1,
                icon: const Icon(
                  Icons.home,
                ),
                label: AppStrings.homeTxt),
            placeholder,
            getAppBarItem(
                index: 2,
                icon: const Icon(
                  Icons.favorite,
                ),
                label: AppStrings.favouritesTxt),
            getAppBarItem(
                index: 3,
                icon: const Icon(
                  Icons.person,
                ),
                label: AppStrings.accountTxt),
          ],
        ));
  }

  Widget getAppBarItem(
      {required int index, required Icon icon, required String label}) {
    final isSelected = index == this.index;
    return InkWell(
      radius: 35,
      onTap: () => selectedIndex(index),
      child: Container(
        height: 55,
        width: 65,
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            IconTheme(
              data: IconThemeData(
                  color: isSelected
                      ? AppColors.txtFldBrdrClrGreen
                      : AppColors.bottomAppItemClrGrey),
              child: icon,
            ),
            TextWidget(
              text: label,
              color: AppColors.bottomAppItemClrGrey,
              size: 10,
              weight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
