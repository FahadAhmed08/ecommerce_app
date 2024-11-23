import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String mainText;
  final String clickableText;
  final VoidCallback onTap;
  final TextStyle mainTextStyle;
  final TextStyle clickableTextStyle;
  final String againtext;
  final bool underlineClickableText;
  final FontWeight fontWeight;

  const ClickableText({
    required this.mainText,
    required this.clickableText,
    required this.onTap,
    this.mainTextStyle = const TextStyle(
      fontSize: 14,
      color: Color(0xff575757),
      fontWeight: FontWeight.w400,
    ),
    this.clickableTextStyle = const TextStyle(
      fontSize: 14,
      color: Color(0xffF83758),
    ),
    required this.againtext,
    this.underlineClickableText = false,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: mainTextStyle,
        children: [
          TextSpan(text: mainText),
          TextSpan(
            text: clickableText,
            style: clickableTextStyle.copyWith(
              fontWeight: fontWeight,
              decoration: underlineClickableText
                  ? TextDecoration.underline
                  : TextDecoration.none,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
          TextSpan(text: againtext),
        ],
      ),
    );
  }
}
