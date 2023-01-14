import 'package:flutter/material.dart';

class Calls_View extends StatefulWidget {
  const Calls_View({super.key});

  @override
  State<Calls_View> createState() => _Calls_ViewState();
}

class _Calls_ViewState extends State<Calls_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(actions: [
      //   PopupMenuButton(itemBuilder: (BuildContext context) {
      //     return [
      //       PopupMenuItem(
      //         child: Text("Clear call log"),
      //         value: ("Clear call log"),
      //       ),
      //       PopupMenuItem(
      //         child: Text("Settings"),
      //         value: ("Settings"),
      //       ),
      //     ];
      //   }),
      // ]),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.call),),
    );
  }
}
