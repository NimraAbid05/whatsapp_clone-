import 'package:flutter/material.dart';

class Status_View extends StatefulWidget {
  const Status_View({super.key});

  @override
  State<Status_View> createState() => _Status_ViewState();
}

class _Status_ViewState extends State<Status_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //     appBar: AppBar(
        //   actions: [
        //     PopupMenuButton(itemBuilder: (BuildContext context) {
        //       return [
        //         PopupMenuItem(
        //           child: Text("Status privacy"),
        //           value: ("Status privacy"),
        //         ),
        //         PopupMenuItem(
        //           child: Text("Settings"),
        //           value: ("Settings"),
        //         ),
        //       ];
        //     }),
        //   ],
        // ));
        floatingActionButton: FloatingActionButton(onPressed: (() {
          
        }),
        child: Icon(Icons.camera_alt),),
        );
  }
}
