import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  const ActivityCard({
    Key? key,
    required this.title,
    required this.iconSrc,
    required this.description,
    this.colorl = const Color.fromARGB(255, 255, 255, 255),
  }) : super(key: key);

  final String title, description;
  final Color colorl;
  final IconData iconSrc;

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
      decoration: BoxDecoration(
          color: widget.colorl,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: 'Inter',
                      fontSize: 20,
                    )),
                const SizedBox(height: 4),
                Text(
                  widget.description,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              // thickness: 5,
              color: Colors.white70,
            ),
          ),
          const SizedBox(width: 8),
          Icon(widget.iconSrc),
        ],
      ),
    );
  }
}
