import 'package:flutter/material.dart';
import 'package:mychat/CustomUI/CustomCard.dart';
import 'package:mychat/Model/ChatModel.dart';







class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: 'Poornima',
      icon: 'assets/groups.png',
      isGroup: false,
      time: '1:30 AM',
      currentMessage: 'Hello, how are you?',
    ),
    ChatModel(
      name: 'STP Leuwint',
      icon: 'assets/groups.png',
      isGroup: true,
      time: 'Yesterday',
      currentMessage: 'Meeting at 2 PM.',
    ),

    ChatModel(
      name: 'Smrithi',
      icon: 'assets/groups.png',
      isGroup: false,
      time: '10:30 AM',
      currentMessage: 'Hello, entheyyunuuu?',
    ),
    ChatModel(
      name: 'Vanya',
      icon: 'assets/groups.png',
      isGroup: false,
      time: '12:30 AM',
      currentMessage: 'Hello, dear?',
    ),
    ChatModel(
      name: 'Abhinav',
      icon: 'assets/groups.png',
      isGroup: false,
      time: '10:30 AM',
      currentMessage: 'Hello, entheyyunuuu?',
    ),
    

  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.chat, color: Colors.white,),
      backgroundColor: Color(0xFF075E54),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index)=> CustomCard(chatModel:chats[index])),
    );
  }
}