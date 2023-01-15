import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/customcard.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

class _Chat_ViewState extends State<Chat_View> {
  List<ChatModel> chats = [
    ChatModel(name: "Nimra", icon: "person.png", isGroup: false, time: "11:00 PM", currentmessage: "hi,"),

  ];
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
      body: ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
