import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationbarItem extends StatelessWidget {

  final IconData iconOfElement;
  final bool isActive;
  final void Function() onPressed;

  const MyBottomNavigationbarItem(
      {
        Key key,
        @required this.iconOfElement,
        this.isActive = false,
        @required this.onPressed
      }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CupertinoButton(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                this.iconOfElement,
                color: isActive ? Colors.black : Colors.blue,
                size: 30,
              ),
              if( this.isActive )
                Container(
                  margin: EdgeInsets.only(top:5),
                  width: 12,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2)
                  ),
                )
            ],
          ),
          onPressed: this.onPressed,
        )
    );
  }



}