import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChacked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = "e1";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          DropdownButton(
            value: menuItem,
            items: [
            DropdownMenuItem(
              value: "e1",
                child: Text("Element 1")
            ),
              DropdownMenuItem(
                  value: "e2",
                  child: Text("Element 2")
              ),
              DropdownMenuItem(
                  value: "3",
                  child: Text("Element 3")
              ),
          ], onChanged: (String? value) {
              setState(() {
                menuItem = value;
              });
          },),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            onEditingComplete: () {
              setState(() {
      
              });
            },
          ),
          Text(controller.text),
          Checkbox(value: isChacked, tristate: true, onChanged: (bool? value) {
            setState(() {
              isChacked = value;
            });
          },),
          CheckboxListTile(title: Text("Click me"),tristate: true, value: isChacked, onChanged: (value) {
            setState(() {
              isChacked = value;
            });
          },),
          Switch(value: isSwitched, onChanged: (bool value) {
            setState(() {
              isSwitched = value;
            });
          },),
          SwitchListTile(title: Text("Switch Me"), value: isSwitched, onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },),
          Slider(max: 10, value: sliderValue, onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
            print(sliderValue);
          },),
          InkWell(
            splashColor: Colors.teal,
              onTap: () {
                print("selected");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.white12,
              )
          ),

          ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white
              ),
              child: Text("Click me")),
          ElevatedButton(onPressed: () {},
              child: Text("click me")),
          FilledButton(onPressed: () {},
              child: Text("click me")),
          TextButton(onPressed: () {},
              child: Text("click me")),
          OutlinedButton(onPressed: () {},
              child: Text("click me")),


        ],),
      ),
    );
  }
}
