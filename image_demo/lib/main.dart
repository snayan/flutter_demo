import 'package:flutter/material.dart';
import 'package:image_demo/pages/fadein.dart';
import 'package:image_demo/pages/normal.dart';

void main() => runApp(ImageDemo());

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Normal(),
      routes: {
        FadeIn.ROUTE_NAME: (BuildContext context) => FadeIn(),
      },
    );
  }
}
