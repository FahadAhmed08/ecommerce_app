import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomButton({
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
