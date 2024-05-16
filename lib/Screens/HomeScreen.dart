import 'package:flutter/material.dart';
import 'package:mychat/Pages/ChatPage.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  // TabController _controller;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  // }

  late TabController _controller = TabController(length: 4, vsync: this, initialIndex: 0);

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when the state is disposed
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
      title: Text('whatsapp clone'
      , style: TextStyle(color: Colors.white),  ),
      actions: [
        IconButton(onPressed: null, icon: Icon(Icons.search, color: Colors.white,)),
        PopupMenuButton<String> (
          onSelected: (value) {
            print(value);
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
        icon: Icon(Icons.more_vert, color: Colors.white), // Vertical ellipsis icon
        )

        
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        controller: _controller,
        // unselectedLabelColor: Colors.white, 
        labelColor: Colors.white,
        tabs: [
          Tab(
            icon: Icon(Icons.camera_alt, color: Colors.white, ),
          ),
          Tab(
            text: "CHATS",
           
            
            
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          )
      
        ],
        labelPadding: EdgeInsets.symmetric(horizontal: 16),


      

      ),

    
      
     ),

     body: TabBarView(
      controller : _controller,
      children: [
        Text('camera on'),
         ChatPage(),
         Text('status'),
        Text('callls')
      ],
     ),     
     
     

    );

  }
}