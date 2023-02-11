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
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 52, 52, 52),
                    Color.fromARGB(255, 23, 23, 23),
                  ])),
            ),
          ),
          //--------------------------------------------------------------------
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Color.fromARGB(255, 22, 22, 22),
                    Color.fromARGB(255, 23, 23, 23),
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      "The Fastest in Delivery Food",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: const Color.fromARGB(255, 244, 244, 244),
                              fontWeight: FontWeight.w700,
                              fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Text(
                      "Our job is to filling your tummy with delicious food and fast delivery",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: const Color.fromARGB(255, 184, 184, 184),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 30, top: 10),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 240, 55, 117),
                              Color.fromARGB(255, 206, 12, 77)
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Get Starred',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
