import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      this.color,
      this.fontsize,
      this.fontweight,
      required this.text,
      this.underline,
      this.textAlign,
      required this.fontFamily,
      this.maxlines});

  final Color? color;
  final double? fontsize;
  final FontWeight? fontweight;
  final String text;
  final TextDecoration? underline;
  final TextAlign? textAlign;
  final String? fontFamily;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxlines,
      softWrap: true,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        fontFamily: fontFamily,
        fontSize: fontsize,
        fontWeight: fontweight,
        decoration: underline,
      ),
    );
  }
}
