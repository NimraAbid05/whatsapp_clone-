import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/camerascreen.dart';

class Status_View extends StatefulWidget {
  const Status_View({super.key});

  @override
  State<Status_View> createState() => _Status_ViewState();
}

class _Status_ViewState extends State<Status_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Camera_Screen()));
        }),
        child: Icon(Icons.camera_alt),
      ),
      
    );
  }
}
