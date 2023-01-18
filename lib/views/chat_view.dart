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
    ChatModel(
        name: "Hira",
        icon: "person.png",
        isGroup: false,
        time: "12:34 PM ",
        currentmessage: "Good afternoon!"),
    ChatModel(
        name: "Nimra",
        icon: "person.png",
        isGroup: false,
        time: "11:00 PM",
        currentmessage: "hi,"),
    ChatModel(
        name: "Friends Forever",
        icon: "group.png",
        isGroup: true,
        time: "Yesterday",
        currentmessage: "hello everyone"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
