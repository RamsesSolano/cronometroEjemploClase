import 'package:cronometro_ejemplo_clase/pages/chronometer_page.dart';
import 'package:cronometro_ejemplo_clase/pages/home_page.dart';
import 'package:cronometro_ejemplo_clase/pages/widgets/my_botton_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyBottomNavigationBar extends StatefulWidget {

  final int currentTab;

  const MyBottomNavigationBar({Key key, this.currentTab = 0}) : super(key: key);

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

  final List<dynamic> routes = [
    HomePage(),
    ChronometerPage(),
    HomePage(),
    ChronometerPage(),
    HomePage(),
  ];

  _MyBottomNavigationBarState({this.currentTab});

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
                final Route route = MaterialPageRoute(
                    builder: (_) => routes[index],
                );
                Navigator.pushReplacement(context, route);
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