import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_ui/models/message_model.dart';
import 'package:flutter_chat_ui/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  const ChatScreen({required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

void main() {
  debugPrint("hello there");
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Row(
      children: [
        Container(
          margin: isMe
              ? EdgeInsets.only(top: 7.0, bottom: 8.0, left: 90.0)
              : EdgeInsets.only(top: 7.0, bottom: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.time,
                style: TextStyle(fontSize: 13.0),
              ),
              SizedBox(height: 8.0),
              Text(
                message.text,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
              borderRadius: isMe
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(12.5),
                      bottomRight: Radius.circular(12.5))
                  : BorderRadius.only(
                      bottomRight: Radius.circular(12.5),
                      topRight: Radius.circular(12.5))),
        ),
        !isMe
            ? IconButton(
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                color: message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
                iconSize: 30.0,
                onPressed: () {},
              )
            : SizedBox.shrink()
      ],
    );
  }

  _messageComposer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 70.0,
        color: Colors.white,
        child: Row(children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration.collapsed(hintText: "Send A Message"),
            onChanged: (value) {},
          )),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.user.name),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.00))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 16.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            _messageComposer()
          ],
        ),
      ),
    );
  }
}
