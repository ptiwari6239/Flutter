import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),

              margin: EdgeInsets.zero,
              accountName: Text("AnjaneyaTiwari"),
              accountEmail: Text("ankjaneya@gmail.com"),
              // currentAccountPicture: Image.asset("newimage.png"),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              "HOME",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text(
              "Email",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
