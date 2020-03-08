import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {

  final name;
  final message;
  final time;
  final messageCount;

  ChatItem({this.name, this.message, this.time, this.messageCount});

  String _generateIconText(String fullName) {

    var nameslice = fullName.split(' ');
    var icon = '';

    if(nameslice[0] != null) {
      icon += nameslice[0][0];
    }

    if(nameslice[1] != null) {
      icon += nameslice[1][0];
    }

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(_generateIconText(name)),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(time),
          Container(
            height: 15,
            width: 15,
            child: Center(
              child: Text(
                messageCount,
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}