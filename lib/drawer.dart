import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Aryan Rohela"),
            accountEmail: Text("rohelaaryan@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.marvel.com/u/prod/marvel/i/mg/9/30/538cd33e15ab7/standard_xlarge.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_2_outlined),
            title: Text("Aryan Rohela"),
            subtitle: Text("Student at NSUT"),
            trailing: Icon(Icons.edit),
            tileColor: Colors.white70,
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("Email"),
            subtitle: Text("rohelaaryan@gmail.com"),
            trailing: Icon(Icons.edit),
            tileColor: Colors.white70,
          ),
        ],
      ),
    );
  }
}
