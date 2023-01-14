import 'package:flutter/material.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

class _Chat_ViewState extends State<Chat_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     PopupMenuButton(itemBuilder: (BuildContext context) {
      //       return [
      //         PopupMenuItem(
      //           child: Text("New group"),
      //           value: ("New group"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("New broadcast"),
      //           value: ("New broadcast"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("Linked device"),
      //           value: ("Linked device"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("Starred messages"),
      //           value: ("Starred messages"),
      //         ),
      //         PopupMenuItem(
      //           child: Text("Settings"),
      //           value: ("Settings"),
      //         ),
      //       ];
      //     })
      //   ],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }
}
