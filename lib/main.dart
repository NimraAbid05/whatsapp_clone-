import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/camerapage.dart';
import 'package:whatsapp_clone/views/chat_view.dart';
import 'package:whatsapp_clone/views/home_view.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras =  await availableCameras();
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

        primarySwatch: Colors.teal,
      ),
      home: Home_View(),
      debugShowCheckedModeBanner: false,
    );
  }
}
