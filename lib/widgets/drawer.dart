import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSluT1NDSQTq0vsqfI4z-JB5TSMu0TqZ9Fqhg";
    return  Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple
                    ),
                    accountName: Text("Sanjay singh"),
                    accountEmail: Text("sanjay@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  )
              ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaler: TextScaler.linear(1.1),
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaler: TextScaler.linear(1.1),
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaler: TextScaler.linear(1.1),
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ],
        ),
      ),
    );
  }
}
