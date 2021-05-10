import 'package:cronometro_ejemplo_clase/pages/widgets/my_bottom_navigation_bar.dart';
import 'package:cronometro_ejemplo_clase/pages/widgets/my_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Center(
        child: MyCounter(),
      ),
    );
  }

}