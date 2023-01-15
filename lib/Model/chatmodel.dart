class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentmessage;
  //constructor (create list in chat page)
  ChatModel(
      {required this.name,
      required this.icon,
      required this.isGroup,
      required this.time,
      required this.currentmessage});
}
