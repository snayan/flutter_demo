import 'package:flutter/material.dart';

void main() => runApp(FadeWidgetApp());

class FadeWidgetApp extends StatefulWidget {
  @override
  _FadeWidgetAppState createState() {
    return _FadeWidgetAppState();
  }
}

class _FadeWidgetAppState extends State<FadeWidgetApp> {
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("fade widget"),
        ),
        body: Center(
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _opacity = (_opacity - 1).abs();
            });
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
