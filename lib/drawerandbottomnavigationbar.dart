import 'package:flutter/material.dart';

class drawerandbottomnavigationbar extends StatefulWidget {
  const drawerandbottomnavigationbar({Key? key}) : super(key: key);

  @override
  State<drawerandbottomnavigationbar> createState() =>
      _drawerandbottomnavigationbarState();
}

class _drawerandbottomnavigationbarState
    extends State<drawerandbottomnavigationbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawerandbottomnavigationbar")),

      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPictureSize: Size(70, 70),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd256TcC6vcaQ99TYzoP0pBbch9_Q-bbrmw&usqp=CAU"),
              ),
              accountName: Text("Divyesh"),
              accountEmail: Text("divyesh@gmail.com")),
        ],
      )),
      // body: ,
    );
  }
}
