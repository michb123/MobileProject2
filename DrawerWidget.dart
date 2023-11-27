import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'AccountPage.dart';
import 'Orderlist.dart';
class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration:BoxDecoration(
                color: Colors.red,
              ) ,
              accountName: Text(
                "Programmer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "dearprogrammer@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("images/avatar.jpg"),),
            ),
          ),
          // List Title
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text("Home", style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold,
            ),),onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: Text("My Account", style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold,
            ),),onTap: () {
            // Navigate to the Home page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          },
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            title: Text("My orders", style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold,
            ),),onTap: () {
            // Navigate to the Home page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderPage()),
            );
          },
          ),
        ],),
    );
  }

}
