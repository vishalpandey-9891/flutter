import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Vishal Pandey"),
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
    );
  }
}
