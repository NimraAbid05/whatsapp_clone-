import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';
import 'package:whatsapp_clone/views/individualpage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.chatModel});
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IndividualPage(chatModel:chatModel,)));
      },
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Image.asset(
                  chatModel.isGroup ? "images/group.png":"images/person.png",
                  color: Colors.white,
                  height: 30,
                  width: 30,
                ),
                backgroundColor: Colors.blueGrey,
              ),
              trailing: Text(chatModel.time),
              title: Text(chatModel.name),
              subtitle: Row(children: [
                Icon(Icons.done_all),
                Text(chatModel.currentmessage),
              ]))
        ],
      ),
    );
  }
}
