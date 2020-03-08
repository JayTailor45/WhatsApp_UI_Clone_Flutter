import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/Pages/Chats.dart';

List<Widget> mainTabs = [
  Container(
    child: Center(
      child: Text('Call logs!'),
    ),
  ),
  ChatsPage(),
  Container(
    child: Center(
      child: Text('All contacts!'),
    ),
  )
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Calls'.toUpperCase())
              ),
              Tab(
                child: Text('Chats'.toUpperCase()),
              ),
              Tab(
                child: Text('Contacts'.toUpperCase()),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Icon(Icons.search)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.more_vert)
            ),
          ],
        ),
        body: TabBarView(
          children: mainTabs,
        ),
      ),
    );
  }
}