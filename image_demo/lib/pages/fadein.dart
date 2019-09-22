import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeIn extends StatelessWidget {
  static const ROUTE_NAME = '/fadein';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fadeIn image"),
      ),
      body: Column(
        children: <Widget>[
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: "https://picsum.photos/250?image=13",
          ),
          Text("aaaaaaaa")
        ],
      ),
    );
  }
}
