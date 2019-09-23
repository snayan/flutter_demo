import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: CustomScrollDemo(),
      ),
    );

class CustomScrollDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomScrollBar(),
          CustomScrollList(),
        ],
      ),
    );
  }
}

class CustomScrollBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text("sliver app bar"),
      floating: true,
      expandedHeight: 200,
      flexibleSpace: Placeholder(),
    );
  }
}

class CustomScrollList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(
            title: Text('Item$index'),
          );
        },
        childCount: 1000,
      ),
    );
  }
}
