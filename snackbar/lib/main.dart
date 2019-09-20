import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("SnackBar demo"),
          ),
          body: SnackBarDemo(),
        ),
      ),
    );

class SnackBarDemo extends StatelessWidget {
  final snackbar = SnackBar(
    content: Text("Yay! A SnackBar!"),
    action: SnackBarAction(
      label: 'undo',
      onPressed: () {
        print("snackbar undo");
      },
    ),
    duration: Duration(seconds: 1),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.redo),
          onPressed: () {
            Scaffold.of(context).showSnackBar(snackbar);
          },
        )
      ],
    );
  }
}
