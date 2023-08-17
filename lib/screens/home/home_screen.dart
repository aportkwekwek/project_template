import 'package:flutter/material.dart';

import '../../model/activities.dart';
import '../../model/project.dart';
import '../../screens/home/components/project_card.dart';
import 'components/activity_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: cardProject
                      .map(
                        (card) => Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ProjectCard(
                            title: card.title,
                            iconSrc: card.iconSrc,
                            color: card.color,
                            description: card.description,
                            subdescription: card.subdescription,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Activities",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                    children: activities
                        .map(
                          (activity) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: ActivityCard(
                              title: activity.title,
                              iconSrc: activity.iconSrc,
                              description: activity.description,
                            ),
                          ),
                        )
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
