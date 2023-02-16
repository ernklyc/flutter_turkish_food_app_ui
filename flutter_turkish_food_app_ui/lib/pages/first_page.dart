import 'package:flutter/material.dart';
import 'package:flutter_turkish_food_app_ui/product/util/custom_color.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor().backgroundColor,
      body: Column(
        children: const [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ProjectColor().backgroundColor,
        selectedItemColor: GradietButtonColor().upColor,
        unselectedItemColor: ProjectColor().bottomIconColor,
        iconSize: 33,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Icon(Icons.home),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Icon(Icons.search),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Icon(Icons.save),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Icon(Icons.settings),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
