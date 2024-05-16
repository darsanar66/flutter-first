import 'package:flutter/material.dart';
import 'package:mychat/Model/ChatModel.dart';

import 'package:mychat/Screens/IndividualPage.dart';




class CustomCard extends StatelessWidget {
  

  final ChatModel chatModel;
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () 
      {
       Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Individualpage(chatModel: chatModel,)),

       );
      },
      child: Column(
        children: [
        ListTile(
      leading : CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(chatModel.isGroup? "assets/groups.png" : "assets/person/person.png"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        
        

        
        
      ),
      trailing: Text(chatModel.time),
      title: Text(chatModel.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
      subtitle: Row(
        children: [
          Icon(Icons.done_all, color: Colors.blue,),
          Text(chatModel.currentMessage, style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),)
        ],
      )
      
      
    )
        ],
      ),
    );
    
    
    

  }
}
