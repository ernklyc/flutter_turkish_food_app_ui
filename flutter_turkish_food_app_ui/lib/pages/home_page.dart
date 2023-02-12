import 'package:flutter/material.dart';
import 'package:flutter_turkish_food_app_ui/pages/first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor().backgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: const [
                HomePageImage(
                  imageHeight: 470,
                  mainImage: 'assets/png/kp.png',
                  imageAligment: Alignment.bottomCenter,
                ),
                HomePageImage(
                  imageHeight: 250,
                  mainImage: 'assets/png/k.png',
                  imageAligment: Alignment.topLeft,
                ),
                HomePageImage(
                  imageHeight: 225,
                  mainImage: 'assets/png/p.png',
                  imageAligment: Alignment.topRight,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  textPadding: ProjectPaddding().textHeadPadding,
                  headText: ProjectText().headTextHP,
                  textColor: ProjectColor().textHeadColor,
                  textWeight: FontWeight.w700,
                  fontSize: 30,
                ),
                CustomText(
                  textPadding: ProjectPaddding().projectTextPadding,
                  headText: ProjectText().text,
                  textColor: ProjectColor().textColor,
                  fontSize: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const FirstPage();
                        },
                      ),
                    );
                  },
                  child: Button(
                    buttonPadding: ProjectPaddding().buttonPadding,
                    buttonHeight: 60,
                    buttonCircular: CustomBorderRadius().buttonCircular,
                    buttonColor: ProjectColor().textHeadColor,
                    buttonDownColor: GradietButtonColor().downColor,
                    buttonUpColor: GradietButtonColor().upColor,
                    buttonText: ProjectText().buttonText,
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

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.buttonPadding,
    required this.buttonHeight,
    required this.buttonUpColor,
    required this.buttonDownColor,
    required this.buttonCircular,
    required this.buttonText,
    required this.buttonColor,
  });

  final EdgeInsets buttonPadding;
  final double buttonHeight;
  final Color buttonUpColor;
  final Color buttonDownColor;
  final BorderRadius buttonCircular;
  final String buttonText;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: buttonPadding,
      child: Container(
        height: buttonHeight,
        decoration: BoxDecoration(
          borderRadius: buttonCircular,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              buttonUpColor,
              buttonDownColor,
            ],
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: buttonColor,
              fontFamily: FontFamily().fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.headText,
    required this.textColor,
    required this.fontSize,
    required this.textPadding,
    this.textWeight,
  });

  final String headText;
  final Color textColor;
  final FontWeight? textWeight;
  final double fontSize;
  final EdgeInsets textPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: textPadding,
        child: Text(
          headText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: textColor,
                fontWeight: textWeight,
                fontSize: fontSize,
                fontFamily: FontFamily().fontFamily,
              ),
        ),
      ),
    );
  }
}

class HomePageImage extends StatelessWidget {
  const HomePageImage({
    super.key,
    required this.mainImage,
    required this.imageAligment,
    this.imageHeight,
  });

  final String mainImage;
  final Alignment imageAligment;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight,
      alignment: imageAligment,
      child: Image.asset(mainImage),
    );
  }
}

class ProjectPaddding {
  final EdgeInsets textHeadPadding = const EdgeInsets.symmetric(horizontal: 50);
  final EdgeInsets projectTextPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets buttonPadding =
      const EdgeInsets.only(left: 20, right: 20, bottom: 50);
}

class ProjectColor {
  final Color backgroundColor = const Color.fromARGB(255, 18, 18, 18);
  final Color textHeadColor = const Color.fromARGB(255, 244, 244, 244);
  final Color textColor = const Color.fromARGB(255, 184, 184, 184);
}

class GradietButtonColor {
  final Color upColor = Color.fromARGB(255, 240, 55, 55);
  final Color downColor = Color.fromARGB(255, 241, 19, 19);
}

class ProjectText {
  final String buttonText = 'Get Starred';
  final String headTextHP = "The Fastest in Delivery Food";
  final String text =
      "Our job is to filling your tummy with delicious food and fast delivery";
}

class FontFamily {
  final String fontFamily = 'Roboto';
}

class CustomBorderRadius {
  final BorderRadius buttonCircular = BorderRadius.circular(20);
}
