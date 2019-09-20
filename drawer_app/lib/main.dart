import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: DrawerApp(),
    ));

class DrawerApp extends StatelessWidget {
  _createRoute(String title) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, animation2) => ItemPage(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DrawerApp"),
      ),
      body: Center(
        child: Text("home"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer title"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("item1"),
              onTap: () {
                Navigator.of(context)
                  ..pop(context)
                  ..push(_createRoute('item1'));
              },
            ),
            ListTile(
              title: Text("item2"),
              onTap: () {
                Navigator.of(context)
                  ..pop(context)
                  ..push(_createRoute('item2'));
              },
            )
          ],
        ),
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  final String _title;

  ItemPage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Text(_title),
      ),
    );
  }
}
