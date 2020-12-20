import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// this is chapter 4 here we learned about how to use Material Drawer | ListView | Circle Avatar | NetworkImage | Floating Action Button ⛳️  widgets - in flutter application
void main() {
// runApp() app in flutter to starting point of any application
// 1)WidgetApp() 2)CupertinoApp  () 3)MaterialApp()
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

// stateless widget means nothing changes here
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              child: Text("MAIN MENU"),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(" vishal pandey"),
              subtitle: Text("developer"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Mail id "),
              subtitle: Text("vishalpandey@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text(" ADDRESS"),
              subtitle: Text("my address z320b sector 12"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
