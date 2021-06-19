import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widgets/category_selector.dart';
import 'package:flutter_chat_ui/widgets/favorite_contacts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
          title: Text("Chats", style: TextStyle(fontSize: 20.0))),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Column(
                children: [
                  FavoriteContacts(),
                  Expanded(
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey.shade200, blurRadius: 5, offset: Offset(-1, -5)),
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
