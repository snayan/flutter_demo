import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyCustomForm()));

class MyCustomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My custom form"),
      ),
      body: CustomForm(),
    );
  }
}

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: RaisedButton(
              child: Text("Submit"),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Process Data"),
                  ));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
