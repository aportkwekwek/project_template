import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectButton extends StatelessWidget {
  const ProjectButton({
    super.key,
    required this.buttonLabel,
  });

  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: SizedBox(
        height: 60,
        width: 300,
        child: Stack(
          children: [
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.cloud,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    buttonLabel,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
