import 'package:flutter/cupertino.dart';

import 'font/fonts.dart';

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
              fontFamily: FontFamily().fonts[0],
            ),
          ),
        ),
      ),
    );
  }
}