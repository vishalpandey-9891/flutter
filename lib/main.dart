import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// this is chapter 1 here we learned about how to use text,container and scanffold widgets in
// flutter application
void main() {
// runApp() app in flutter to starting point of any application
// 1)WidgetApp() 2)CupertinoApp  () 3)MaterialApp()
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

// SHOW TEXT USING CLASS HOMEPAGE IN APP
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.deepOrange,
//       child: Text("Hi flutter APP"),
//     );
//   }
// }

// stateless widget means nothing changes here
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIRST TEST APP"),
      ),
      body: Container(
        child: Text("hi flutter"),
      ),
    );
  }
}
