import 'package:flutter/material.dart';

class ImageLayout extends StatelessWidget {
  const ImageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practise Flutter"),
        backgroundColor: Colors.green,
      ),
     body: Container(
       child: Stack(
         children: [

           SizedBox(height: 300,child: Center(child: Text("Hello World", style: TextStyle(color: Colors.red),))),
           ListTile(
             leading: Icon(Icons.eighteen_mp_outlined),
             tileColor: Colors.red,
             title: Text("jefwehf"),
             trailing: Text("khgewh"),
             onTap: () {
               print("Click successful");
             },
           )
         ],
       ),
     ),
    );
  }
}
