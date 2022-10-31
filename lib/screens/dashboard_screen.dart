import 'package:assignment1/Widgets/account_page_widget.dart';
import 'package:assignment1/Widgets/favourites_page_widget.dart';
import 'package:assignment1/Widgets/menu_page_widget.dart';
import 'package:flutter/material.dart';
import '../Widgets/BottomAppBarWidget.dart';
import '../Widgets/FABWidget.dart';
import '../Widgets/home_page_widget.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);
  static const routeName = 'dashboard-screen';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var index =1;

  final pages =const <Widget>  [
    MenuPage(),
    HomePage(),
    FavouritesPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      left: false,
      right: false,
      bottom: false,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child:  Scaffold(
          extendBody: true,
            floatingActionButton: const FABWidget(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBarWidget(index : index,selectedIndex: onChangedTab,),
            body: pages[index],
        )));

        
  }
  void onChangedTab(int index){
    setState(() {
      this.index=index;
    });
  }
}
