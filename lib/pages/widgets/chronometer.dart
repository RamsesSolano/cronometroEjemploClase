import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chronometer extends StatefulWidget {
  const Chronometer({Key key}) : super(key: key);

  @override
  _ChronometerState createState() => _ChronometerState();
}

class _ChronometerState extends State<Chronometer> {
  int milisecons = 0;
  bool running = false;
  Timer timer;


  void onPressed(){
    if( !this.running ){
      timer = Timer.periodic(Duration( milliseconds: 100 ), (_) {
        this.milisecons += 100;
        this.running = true;
        setState(() {});
      });
    } else if( this.running ) {

      if( timer != null ){
        timer.cancel();
      }
      this.milisecons = 0;
      this.running = false;
      setState(() {});
    }
  }

  String format(){

    final duration = Duration( milliseconds : this.milisecons);

    String twoDigits( int value) {
      return value >= 10 ? "$value": "0$value";
    }

    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    String millisecondsAsString = twoDigits(duration.inMilliseconds.remainder(1000)) ;

    return "$hours:$minutes:$seconds:$millisecondsAsString";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          this.format(),
          style: TextStyle(
              fontSize: 20
          ),
        ),
        CupertinoButton(
            child: Text( running ? "Detener" : "Iniciar"),
            onPressed: this.onPressed,
        )
      ],
    );
  }
}
