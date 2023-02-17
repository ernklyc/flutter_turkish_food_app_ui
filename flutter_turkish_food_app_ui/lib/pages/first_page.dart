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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ProjectColor().backgroundColor,
        elevation: 0,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: ProjectColor().textColor,
                      ),
                ),
                Text(
                  "Eren KALYCI",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: ProjectColor().textHeadColor),
                ),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 23,
              backgroundColor: GradietButtonColor().upColor,
              foregroundImage: const AssetImage('assets/png/eren.png'),
            ),
          ],
        ),
      ),
      backgroundColor: ProjectColor().backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What wold you like to eat",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: ProjectColor().textHeadColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextField(
                      style: TextStyle(
                        color: ProjectColor().textColor,
                      ),
                      cursorColor: ProjectColor().textColor,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 27, 27, 27),
                        hintText: "Find the food you like",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 79, 79, 79),
                        ),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Color.fromARGB(255, 79, 79, 79),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: GradietButtonColor().upColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            size: 35,
                            color: ProjectColor().textHeadColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ProjectColor().backgroundColor,
        selectedItemColor: GradietButtonColor().upColor,
        unselectedItemColor: ProjectColor().bottomIconColor,
        iconSize: 30,
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
