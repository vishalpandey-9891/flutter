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
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "CHANGE MY NAME";
  TextEditingController _namecontroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/bg.jpeg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                        hintText: "enter some text here",
                        labelText: "Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("vishal  pandey"),
                accountEmail: Text("vi@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(" vishal pandey"),
              subtitle: Text("developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Mail id "),
              subtitle: Text("vishalpandey@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text(" ADDRESS"),
              subtitle: Text("my address z320b sector 12"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _namecontroller.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
