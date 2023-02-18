import 'package:flutter/material.dart';
import 'package:flutter_turkish_food_app_ui/pages/first_page.dart';
import 'package:flutter_turkish_food_app_ui/product/lang/langue_item.dart';

import '../product/custom_buttom.dart';
import '../product/img/custom_image.dart';
import '../product/img/home_page_path.dart';
import '../product/util/custom_color.dart';
import '../product/util/custom_padding_radius.dart';
import '../product/util/custom_text.dart';

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
              children: [
                HomePageImage(
                  imageHeight: 470,
                  mainImage: ImagePath().imgPath[0],
                  imageAligment: Alignment.bottomCenter,
                ),
                HomePageImage(
                  imageHeight: 250,
                  mainImage: ImagePath().imgPath[1],
                  imageAligment: Alignment.topLeft,
                ),
                HomePageImage(
                  imageHeight: 225,
                  mainImage: ImagePath().imgPath[2],
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
                  headText: ProjectText().homePageTetx[1],
                  textColor: ProjectColor().textHeadColor,
                  textWeight: FontWeight.w700,
                  fontSize: 30,
                ),
                CustomText(
                  textPadding: ProjectPaddding().projectTextPadding,
                  headText: ProjectText().homePageTetx[2],
                  textColor: ProjectColor().textColor,
                  fontSize: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const FirstPage();
                      },
                    ));
                  },
                  child: Button(
                    buttonPadding: ProjectPaddding().buttonPadding,
                    buttonHeight: 60,
                    buttonCircular: CustomBorderRadius().buttonCircular,
                    buttonColor: ProjectColor().textHeadColor,
                    buttonDownColor: GradietButtonColor().downColor,
                    buttonUpColor: GradietButtonColor().upColor,
                    buttonText: ProjectText().homePageTetx[0],
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
