import 'package:flutter/material.dart';
import 'package:olx_app/Welcome/welcome_screen.dart';

class ErrorAlertDialog extends StatelessWidget {
  final String message;
  const ErrorAlertDialog({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message),
      actions: <Widget>[
        ElevatedButton(
          onPressed: (){
            Route newRoute = MaterialPageRoute(
                builder: (context) => welcomeScreen()
            );
            Navigator.pushReplacement(context, newRoute);
          },
          child: Center(
            child: Text("OK"),
          ),
        ),
      ],
    );
  }
}
