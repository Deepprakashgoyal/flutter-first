import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Deep Prakash Goyal"),
              accountEmail: Text("wpexpertdeep@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://deepprakashgoyal.github.io/about/images/me1.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("wpexpertdeep@gmail.com"),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.pin_drop),
            title: Text("Address"),
            subtitle: Text("Agra, Uttar Pradesh"),
          )
        ],
      ),
    );
  }
}
