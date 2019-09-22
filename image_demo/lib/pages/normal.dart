import 'package:flutter/material.dart';
import 'package:image_demo/pages/fadein.dart';

class Normal extends StatelessWidget {
  static const String ROUTE_NAME = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("normal image"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network("https://picsum.photos/250?image=10"),
          Text("other widgets"),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: RaisedButton(
              child: Text("navigate"),
              onPressed: () {
                Navigator.of(context).pushNamed(FadeIn.ROUTE_NAME);
              },
            ),
          )
        ],
      ),
    );
  }
}
