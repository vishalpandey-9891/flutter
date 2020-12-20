import 'package:flutter/material.dart';

import '../card.dart';
import '../drawer.dart';

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
            child: MyCard(myText: myText, namecontroller: _namecontroller),
          ),
        ),
      ),
      drawer: MyDrawer(),
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
