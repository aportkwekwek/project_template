import 'package:flutter/material.dart' show IconData, Icons;

class ActivityCardModel {
  final String title, description;
  final IconData iconSrc;

  ActivityCardModel({
    required this.title,
    required this.description,
    required this.iconSrc,
  });
}

final List<ActivityCardModel> activities = [
  ActivityCardModel(
    title: "Pariatur mollit.",
    description: "Aute Lorem elit proident amet est sint fugiat do.",
    iconSrc: Icons.backpack_outlined,
  ),
  ActivityCardModel(
    title: "Officia amet.",
    description: "Ullamco laborum qui commodo.",
    iconSrc: Icons.alarm_add_outlined,
  ),
  ActivityCardModel(
    title: "In proident minim.",
    description: "Aute amet non reprehenderit adipisicing tempor voluptate.",
    iconSrc: Icons.photo_album_outlined,
  ),
  ActivityCardModel(
    title: "Sunt Lorem officia.",
    description: "Pariatur ullamco ea sint consequat.",
    iconSrc: Icons.speed_outlined,
  ),
];
