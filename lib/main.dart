import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/chat_view.dart';
import 'package:whatsapp_clone/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
      
        primarySwatch: Colors.green,
      ),
      home: Home_View(),
      debugShowCheckedModeBanner: false,
    );
  }
}


