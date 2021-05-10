import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {

  final int initialValue;

  const MyCounter( { Key key, this.initialValue = 0 } ): super( key: key );

  @override
  State createState()=> MyCounterState();
}

class MyCounterState extends State<MyCounter> {

  int counter = 0;

  @override
  void initState(){
    super.initState();
    this.counter = widget.initialValue;
  }

  void add() {

    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Counter es "),
        Text(
            "$counter",
          style: TextStyle(
            fontSize: 30
          ),
        ),
        FloatingActionButton(
            onPressed: this.add
        )
      ],
    );
  }

}