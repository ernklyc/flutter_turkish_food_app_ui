import 'package:flutter/cupertino.dart';

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