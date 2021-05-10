import 'package:cronometro_ejemplo_clase/pages/widgets/chronometer.dart';
import 'package:cronometro_ejemplo_clase/pages/widgets/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ChronometerPage extends StatelessWidget {
  const ChronometerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Center(
        child: Chronometer(),
      )
    );
  }
}
