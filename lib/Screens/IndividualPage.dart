import 'package:flutter/material.dart';
import 'package:mychat/Model/ChatModel.dart';
import 'package:mychat/Pages/ChatPage.dart';
import 'package:mychat/Screens/HomeScreen.dart';


class Individualpage extends StatefulWidget {
  final ChatModel chatModel;
  const Individualpage({Key? key, required this.chatModel}) : super(key: key);


  @override
  State<Individualpage> createState() => _IndividualpageState();
}

class _IndividualpageState extends State<Individualpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leadingWidth: 80,
      titleSpacing: 0,
      title: InkWell(
       onTap: ()  {
        
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
       },
      child:Container(
        margin: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(widget.chatModel.name, 
                    style: TextStyle(fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white
                    ),
                    ),
                    Text("last seen by yesterday", style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.white),)
                  ],
                
                ),
            ]
            ),
              
          ],
          
        ),
      ),
      ),
      actions: [
      Container(
        margin: EdgeInsets.only(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(Icons.videocam, color: Colors.white,),onPressed: () {}),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(icon: Icon(Icons.call, color: Colors.white,),onPressed: () {}),
      ),
      PopupMenuButton <String> (
        onSelected:(value) {

        },
      itemBuilder: (BuildContext context){
        return [
          PopupMenuItem(child: Text("New group"), value: "New group",),
            PopupMenuItem(child: Text("New broadcast"), value: "New broadcast",),
            PopupMenuItem(child: Text("Linked devices"), value: "Linked devices",),
            PopupMenuItem(child: Text("Starred messages"), value: "Starred messages",),
            PopupMenuItem(child: Text("Payments"), value: "Payments",),
            PopupMenuItem(child: Text("Settings"), value: "Settings",),
   
        ];
      
      },
      icon: Icon(Icons.more_vert, color: Colors.white)
      )
     
      ],
      leading: InkWell(
        onTap: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) => ChatPage()));
        },

      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
        Icon(Icons.arrow_back, color: Colors.white, size: 40,),
        CircleAvatar(
          backgroundImage: AssetImage(widget.chatModel.isGroup? "assets/groups.png" : "assets/person/person.png"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        
          
        )

        ],
      ),
     ),
      
     ) 
    );
  }
}
