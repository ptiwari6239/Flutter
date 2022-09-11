import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      // ignore: use_full_hex_values_for_flutter_colors
      backgroundColor: const Color(0xffb5d69be),
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              // ignore: use_full_hex_values_for_flutter_colors
              decoration: BoxDecoration(color: Color(0xffb5d69be)),

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
