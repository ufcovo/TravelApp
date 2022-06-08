import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButtons({Key? key, 
  this.text = "Hi",
  this.icon,
  this.isIcon = false,
  required this.color,
  required this.backgroundColor,
  required this.borderColor,
  required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
          child: isIcon == false ? Center(child: AppText(text: text!, color: color,)) : Center(child: Icon(icon, color: color,)),
    );
  }
}
