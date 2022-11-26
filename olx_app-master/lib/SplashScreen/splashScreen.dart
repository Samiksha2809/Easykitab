import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material (
        child: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors:[
                  Colors.purple,
                  Colors.deepPurple,
                ],
              begin: const FractionalOffset(0.0,0.0),
              end: const FractionalOffset(1.0,0.0),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ,
                ),
              ],
            ),
          ),
        ) ,
    );

  }
}
