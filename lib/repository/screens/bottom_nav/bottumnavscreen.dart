import 'package:blinkit_app/repository/screens/card/card.dart';
import 'package:blinkit_app/repository/screens/category/category.dart';
import 'package:blinkit_app/repository/screens/home/homeScreen.dart';
import 'package:blinkit_app/repository/screens/print/print.dart';
import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int CurrentIndex = 0;
  List<Widget> Pages = [
    HomeScreen(),
    CardScreen(),
    Category(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: CurrentIndex,
        children: Pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: UIHelper.customImage(img: "home 1.png"),label: "Home"),
      BottomNavigationBarItem(icon: UIHelper.customImage(img: 'shopping-bag 1.png'),label: "Card"),
      BottomNavigationBarItem(icon: UIHelper.customImage(img: "category 1.png"),label: "Category") ,
      BottomNavigationBarItem(icon: UIHelper.customImage(img: "printer 1.png"),label: "Print")  ,
      ],
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: (index){
        setState(() {
          CurrentIndex =index;
        });
        },
      ),
    );
  }
}
