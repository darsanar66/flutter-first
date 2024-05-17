import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      backgroundColor: Colors.black,
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
          PopupMenuItem(child: Text("View contact"), value: "View contact",),
            PopupMenuItem(child: Text("Media,links, docs"), value: "Media, links, docs",),
            PopupMenuItem(child: Text("Search"), value: "Search",),
            PopupMenuItem(child: Text("Mute notifications"), value: "Mute notifications",),
            PopupMenuItem(child: Text("Disappearing messages"), value: "Disappearing messages",),
            PopupMenuItem(child: Text("WallPaper"), value: "Wallpaper",),
            PopupMenuItem(child: Text("More"), value: "More", )
   
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
                    width: MediaQuery.of(context).size.width-60,
                    child: Card(
                      margin: EdgeInsets.only(left: 2, right: 2, bottom: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                  
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    prefixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.emoji_emotions),
                      ),
                      
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          IconButton(onPressed: () {}, icon: Icon(Icons.attach_file)
                          
                          
                          
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt))
                        ],
                      ),
                      
                      
                    hintText: "Type a message",
                    
                    contentPadding: EdgeInsets.all(20)
                  ),
                    
                    ))),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/mic.png'),
                                  
                      radius: 25,
                    
                    ),
                  ),
                ],
              ),
            ),

          ],

        ),
     ), 
    );
  }
}
