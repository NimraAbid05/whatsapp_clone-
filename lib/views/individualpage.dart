import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key, required this.chatModel});
//chat model instance
  final ChatModel chatModel;
  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.mic),),
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 20,
                child: Image.asset(
                  widget.chatModel.isGroup
                      ? "images/group.png"
                      : "images/person.png",
                  color: Colors.white,
                  height: 30,
                  width: 30,
                ),
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            // padding: EdgeInsets.zero,
            // margin: EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatModel.name),
                Text(
                  "last seen today 12:00 PM",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("View contact"),
                value: ("View contact"),
              ),
              PopupMenuItem(
                child: Text("Media, links, and docs"),
                value: ("Media, links, and docs"),
              ),
              PopupMenuItem(
                child: Text("Search"),
                value: ("Search"),
              ),
              PopupMenuItem(
                child: Text("Mute notifications"),
                value: ("Mute notifications"),
              ),
              PopupMenuItem(
                child: Text("Disappearing messages"),
                value: ("Disappearing messages"),
              ),
              PopupMenuItem(
                child: Text("Wallpaper"),
                value: ("Wallpaper"),
              ),
              PopupMenuItem(
                child: Text("More"),
                value: ("More"),
              ),
            ];
          })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                        margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 50,
                          minLines: 1,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                            hintText: "Type a message",
                            
                            prefixIcon: IconButton(
                              icon: Icon(Icons.emoji_emotions),
                              onPressed: () {},
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.attach_file),),
                                IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),),
                               
                              ],
                            ),
                            contentPadding: EdgeInsets.all(5),

                          ),
                        )),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8,right: 5,left: 2),
                  child:  CircleAvatar(
                    radius: 25,
                    child: IconButton(icon: Icon(Icons.mic), onPressed: () {  },),
                  ),
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
