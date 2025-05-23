import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookBotton extends StatelessWidget {
  const CustomBookBotton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.borderRadius,
    this.textSize,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backgroundColor,
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
