import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectButton extends StatelessWidget {
  const ProjectButton({
    Key? key,
    required this.buttonLabel,
    required this.buttonTap,
  }) : super(key: key);

  final String buttonLabel;
  final Function()? buttonTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: SizedBox(
          height: 60,
          width: 300,
          child: Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
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
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
