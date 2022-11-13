import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class mydrawer extends StatelessWidget {
  const mydrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageURL = "https://picsum.photos/seed/picsum/200/300";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            
              accountName: Text("Mohit Raj Sinha",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text("example@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageURL)),
            ),
          ),
          ListTile(
            onTap: () {
              print("Home Is Pressed");
            },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.white,
            ),
            title: Text(
              "Contact Us",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
