import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(color: Colors.amber),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    "The Fastest in Delivery Food",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: const Color.fromARGB(255, 244, 244, 244),
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                SizedBox(
                  width: 270,
                  child: Text(
                    "Our job is to filling your tummy with delicious food and fast delivery",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: const Color.fromARGB(255, 184, 184, 184),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
