import 'package:flutter_chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

// USERS
final User greg = User(id: 1, name: 'Greg', imageUrl: 'assets/images/greg.jpg');
final User james =
    User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg');
final User john = User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg');
final User olivia =
    User(id: 4, name: 'Olivia', imageUrl: 'assets/images/olivia.jpg');
final User sam = User(id: 5, name: 'Sam', imageUrl: 'assets/images/sam.jpg');
final User sophia =
    User(id: 6, name: 'Sophia', imageUrl: 'assets/images/sophia.jpg');
final User steven =
    User(id: 7, name: 'Steven', imageUrl: 'assets/images/steven.jpg');
final User melanie =
    User(id: 8, name: 'Melanie', imageUrl: 'assets/images/melanie.jpeg');
final User elsie =
    User(id: 9, name: 'Elsie', imageUrl: 'assets/images/elsie.jpeg');

// FAVORITE CONTACTS
List<User> favorites = [melanie, elsie, sam, steven, olivia, john, greg];
