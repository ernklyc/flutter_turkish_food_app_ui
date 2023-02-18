import 'package:flutter/material.dart';
import 'package:flutter_turkish_food_app_ui/product/lang/langue_item.dart';
import 'package:flutter_turkish_food_app_ui/product/util/custom_color.dart';

import '../product/util/custom_padding_radius.dart';

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
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _upTitle(context),
                _downTitle(context),
              ],
            ),
            const Spacer(),
            _cricleAvatar(),
          ],
        ),
      ),
      backgroundColor: ProjectColor().backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: ProjectPaddding().scafoldPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: ProjectPaddding().top,
                child: _CustomText(text: ProjectText().homePageTetx[3]),
              ),
              const _FlitterButton(),
              _CustomText(text: ProjectText().homePageTetx[4]),
              _categoriesButton(),
              _CustomText(text: ProjectText().homePageTetx[5]),
              const _PopularsNowCard()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
  //----------------------------------------------------------------------------

  Text _categoriesText(BuildContext context) {
    return Text(
      "Pide",
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: ProjectColor().textHeadColor),
    );
  }

  CircleAvatar _cricleAvatar() {
    return CircleAvatar(
      radius: 20,
      backgroundColor: GradietButtonColor().upColor,
      foregroundImage: const AssetImage('assets/png/eren.png'),
    );
  }

  Text _downTitle(BuildContext context) {
    return Text(
      "Eren KALYCI",
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: ProjectColor().textHeadColor),
    );
  }

  Text _upTitle(BuildContext context) {
    return Text(
      "Welcome",
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: ProjectColor().textColor,
          ),
    );
  }

  SizedBox _categoriesButton() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: ProjectPaddding().right,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                      color: GradietButtonColor().upColor,
                      borderRadius: CustomBorderRadius().buttonCircular,
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
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Image.asset(
                              'assets/png/kp.png',
                              height: 40,
                            ),
                          ),
                          _categoriesText(context),
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
    );
  }
}

class _FlitterButton extends StatelessWidget {
  const _FlitterButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddding().vertical15,
      child: Row(
        children: [
          const _TextField(),
          Padding(
            padding: ProjectPaddding().left,
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
                borderRadius: CustomBorderRadius().buttonCircular,
              ),
              child: RepaintBoundary(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_alt,
                    size: 30,
                    color: ProjectColor().textHeadColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: TextStyle(
          color: ProjectColor().textColor,
        ),
        cursorColor: ProjectColor().textColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: TextFieldColor().bg,
          hintText: ProjectText().homePageTetx[9],
          hintStyle: TextStyle(
            color: TextFieldColor().searachText,
          ),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: TextFieldColor().searachText,
          border: OutlineInputBorder(
            borderRadius: CustomBorderRadius().buttonCircular,
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  const _CustomText({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: ProjectColor().textHeadColor),
    );
  }
}

class _PopularsNowText extends StatelessWidget {
  const _PopularsNowText({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: ProjectColor().textHeadColor,
          ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}

class _PopularsNowCard extends StatelessWidget {
  const _PopularsNowCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _PopularsNowText(
                                text: ProjectText().homePageTetx[6],
                              ),
                              _PopularsNowText(
                                text: ProjectText().homePageTetx[7],
                              ),
                              _PopularsNowText(
                                text: ProjectText().homePageTetx[8],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
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
    );
  }
}
