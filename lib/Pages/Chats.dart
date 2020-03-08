import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/ChatItem.dart';
import 'package:whatsappclone/models/ChatItem.dart' as ChatItemModel;


class ChatsPage extends StatefulWidget {

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {

  /*List chats = [
    ChatItem(
      name: 'Khushboo Tailor',
      message: 'Meet me at office tomorrow',
      time: '10 min ago',
      messageCount: '2',
    ),
    ChatItem(
      name: 'Dhruvin Tailor',
      message: 'Check the last jokes :D',
      time: 'Yesterday',
      messageCount: '1',
    ),
    ChatItem(
      name: 'Neel Tailor',
      message: 'Will let you know!',
      time: 'Yesterday',
      messageCount: '0',
    ),
  ];*/

  List chats = [
    ChatItemModel.ChatItem(
          name: 'Khushboo Tailor',
          message: 'Meet me at office tomorrow',
          time: '10 min ago',
          pendingMessage: '2',
        ),
    ChatItemModel.ChatItem(
          name: 'Dhruvin Tailor',
          message: 'Check the last joke :D',
          time: 'Yesterday',
          pendingMessage: '1',
        ),
    ChatItemModel.ChatItem(
          name: 'Neel Tailor',
          message: 'Will let you know!',
          time: 'Yesterday',
          pendingMessage: '0',
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          ChatItemModel.ChatItem chat = chats[index];
          return ChatItem(
            name: chat.name,
            message: chat.message,
            time: chat.time,
            messageCount: chat.pendingMessage,
          );
        },
      ),
    );
  }
}