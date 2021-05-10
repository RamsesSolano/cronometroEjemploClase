import 'package:cronometro_ejemplo_clase/pages/widgets/my_botton_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyBottomNavigationBar extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyBottomNavigationBarState();
  }


}


class _MyBottomNavigationBarState extends State<MyBottomNavigationBar>{

  int currentTab = 0;
  final List<IconData> items = [
    Ionicons.home_outline,
    Ionicons.heart_outline,
    Ionicons.reader_outline,
    Ionicons.basket_outline,
    Ionicons.person_outline
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  width: 1,
                  color: Colors.black12

              )
          )
      ),
      child: SafeArea(
        child: Row(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: List.generate(items.length, (index) {
            final IconData iconData = items[index];
            return MyBottomNavigationbarItem(
              iconOfElement: iconData,
              isActive: index == currentTab,
              onPressed: (){
                currentTab = index;
                setState(() {});
              },
            );
          })
        ),
      ),
    );
  }
}