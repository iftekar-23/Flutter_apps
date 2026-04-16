
import 'package:apps/data/notifiers.dart';
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
          title: Text("Flutter Dev"), centerTitle: true,
          actions: [
            IconButton(onPressed:() {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            }, icon: ValueListenableBuilder(valueListenable: isDarkModeNotifier,
                builder: (context, isDarkkMode, child) {
                  return Icon(
                    isDarkkMode ? Icons.light_mode : Icons.dark_mode
                  );
                },))
          ],
        ),

body: ValueListenableBuilder(valueListenable: selectedPageNotifier,
    builder: (context, selectedPage, child) {
      return pages.elementAt(selectedPage);
    },
),

        bottomNavigationBar: NavbarWidget()
    );
  }
}
