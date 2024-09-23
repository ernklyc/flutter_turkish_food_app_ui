import 'package:flutter/material.dart';
import '../font/fonts.dart';

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
        child: SizedBox(
          child: Text(
            headText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: textColor,
                  fontWeight: textWeight,
                  fontSize: fontSize,
                  fontFamily: FontFamily().fonts[0],
                ),
          ),
        ),
      ),
    );
  }
}
