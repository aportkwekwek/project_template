import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.subdescription,
    required this.iconSrc,
    this.color = const Color(0xFF7553F6),
  }) : super(key: key);

  late String title, description, subdescription;
  late Color color;
  late IconData iconSrc;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 280,
      width: 260,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 6, right: 8),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                    child: Text(
                      widget.description,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Text(
                    widget.subdescription,
                    style: const TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              widget.iconSrc,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
