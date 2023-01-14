import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/calls_view.dart';
import 'package:whatsapp_clone/views/chat_view.dart';
import 'package:whatsapp_clone/views/status_view.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Clone"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: ("New group"),
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                value: ("New broadcast"),
              ),
              PopupMenuItem(
                child: Text("Linked device"),
                value: ("Linked device"),
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
                value: ("Starred messages"),
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: ("Settings"),
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
        Text("Camera"),
        Chat_View(),
        Status_View(),
        Calls_View(),
      ]),
    );
  }
}
