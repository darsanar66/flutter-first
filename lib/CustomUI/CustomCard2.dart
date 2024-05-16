import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/person/person.png'),
        backgroundColor: Colors.blueGrey,
        

        
      ),
      title: Text('Diya', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
      subtitle: Row(
        children: [
          Icon(Icons.done_all, color: Colors.blue,),
          Text("hhello dear", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),)

        ],
      ),
      
      
      trailing: Text("2.00"),
      
    );
  }
}