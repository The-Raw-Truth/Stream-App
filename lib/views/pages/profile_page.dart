import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 170,
                      width: 170,
                      child: Image.asset(
                        "assets/images/logo.png",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("P",
                        style: TextStyle(color: Colors.white, fontSize: 23)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Profile",
                    style: TextStyle(
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      "My Account",
                      style: TextStyle(color: Colors.white),
                    ),
                  
                  ),
                    SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Help",
                      style: TextStyle(color: Colors.white),
                    ),
                   
                  ),
                    SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Privacy Policy and Cookies",
                      style: TextStyle(color: Colors.white),
                    ),
                   
                  ),
                    SizedBox(
                    height: 30,
                  ),
                   ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.white),
                    ),
                   
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
