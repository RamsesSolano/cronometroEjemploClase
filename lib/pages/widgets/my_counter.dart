import 'package:flutter/cupertino.dart';
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

  void reload() {
    this.counter = 0;
    setState(() {});
  }

  void add() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Counter es "),
        SizedBox(height: 20),
        Text(
            "$counter",
          style: TextStyle(
            fontSize: 30
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
                child: CupertinoButton(
                  child: Text( "Adicionar" ),
                  onPressed: this.add,
                )
            ),
            Expanded(
                child: CupertinoButton(
                  child: Text( "Reiniciar" ) ,
                  onPressed: reload,
                )
            )
          ],
        )
      ],
    );
  }

}