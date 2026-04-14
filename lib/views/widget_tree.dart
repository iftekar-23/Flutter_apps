
import 'package:apps/views/pages/home_page.dart';
import 'package:apps/views/pages/profile_page.dart';
import 'package:apps/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dev"), centerTitle: true, backgroundColor: Colors.teal,
        ),

body: pages.elementAt(1),

        bottomNavigationBar: NavbarWidget()
    );
  }
}
