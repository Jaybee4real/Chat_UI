import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Contacts",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          Container(  
            height: 120.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                itemCount: favorites.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(height: 10.0),
                        Text(favorites[index].name, style: TextStyle(color: Colors.blueGrey))
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
