import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:new_flutter_project/pages/home_page.dart';
import 'package:new_flutter_project/pages/login_page.dart';
import 'package:new_flutter_project/utils/Constants.dart';

// this is chapter 6  here we learned about how to use Organising Your Flutter Code in flutter application
Future main() async {
  // WidgetsApp //MaterialApp //CupertinoApp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName1: (context) => LoginPage(),
        HomePage.routeName1: (context) => HomePage(),
      },
    );
  }
}
