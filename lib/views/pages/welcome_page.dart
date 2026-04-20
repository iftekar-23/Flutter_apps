import 'package:apps/views/widget_tree.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset("images/Flutter.png"),
            ),
            FilledButton(onPressed: () {
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
                return WidgetTree();
              },)
              );
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
