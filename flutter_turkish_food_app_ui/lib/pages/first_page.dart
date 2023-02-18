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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What wold you like to eat",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: ProjectColor().textHeadColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          color: ProjectColor().textColor,
                        ),
                        cursorColor: ProjectColor().textColor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 27, 27, 27),
                          hintText: "Find the food you like",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 79, 79, 79),
                          ),
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor:
                              const Color.fromARGB(255, 79, 79, 79),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              GradietButtonColor().upColor,
                              GradietButtonColor().downColor,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RepaintBoundary(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: ProjectColor().textHeadColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Catogories",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: ProjectColor().textHeadColor),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                color: GradietButtonColor().upColor,
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    GradietButtonColor().upColor,
                                    GradietButtonColor().downColor,
                                  ],
                                ),
                              ),
                              child: RepaintBoundary(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Image.asset(
                                        'assets/png/kp.png',
                                        height: 40,
                                      ),
                                    ),
                                    Text(
                                      "Pide",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color:
                                                  ProjectColor().textHeadColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Text(
                "Catogories",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: ProjectColor().textHeadColor),
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15, top: 15),
                      child: Container(
                        height: 350,
                        width: 250,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 28, 28, 28),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: RepaintBoundary(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image(
                                  image: AssetImage('assets/png/kp.png'),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pide With",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                color: ProjectColor()
                                                    .textHeadColor,
                                              ),
                                        ),
                                        Text(
                                          "Extra Ground Beef",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                color: ProjectColor()
                                                    .textHeadColor,
                                              ),
                                        ),
                                        Text(
                                          "30 Min | 1 Service",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                color: ProjectColor().textColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            GradietButtonColor().upColor,
                                            GradietButtonColor().downColor,
                                          ],
                                        ),
                                      ),
                                      child: RepaintBoundary(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.save,
                                            size: 30,
                                            color: ProjectColor().textHeadColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ProjectColor().backgroundColor,
        selectedItemColor: GradietButtonColor().upColor,
        unselectedItemColor: ProjectColor().bottomIconColor,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 25,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "SEARCH",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: "SAVES",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "SETTİNGS",
          ),
        ],
      ),
    );
  }
}
