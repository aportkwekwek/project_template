import 'package:flutter/material.dart';

class ModelProjectCard {
  final String title, description, subdescription;
  final Color color;
  final IconData iconSrc;

  ModelProjectCard({
    required this.title,
    required this.description,
    required this.subdescription,
    required this.iconSrc,
    this.color = const Color.fromARGB(255, 255, 255, 255),
  });
}

final List<ModelProjectCard> cardProject = [
  ModelProjectCard(
      title: "Amet ad non cillum.",
      description:
          "Magna minim do deserunt mollit ea culpa duis proident ut sint tempor nostrud esse proident.",
      subdescription: "Esse non commodo.",
      iconSrc: Icons.android),
  ModelProjectCard(
    title: "Occaecat aute proident dolore.",
    description:
        "Ullamco ut culpa aute commodo quis dolor qui deserunt dolor aliquip magna do adipisicing.",
    subdescription: "Nulla est fugiat.",
    iconSrc: Icons.apple_outlined,
  ),
  ModelProjectCard(
    title: "Elit nulla occaecat aliqua ullamco velit.",
    description:
        "Ipsum amet proident nisi ad velit cupidatat sunt quis tempor adipisicing pariatur do commodo nostrud.",
    subdescription: "Proident labore commodo.",
    iconSrc: Icons.warehouse_outlined,
  ),
];
