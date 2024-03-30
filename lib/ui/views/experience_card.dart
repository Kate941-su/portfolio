import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/card_title.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 128),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle(title: '02. Experience'),
            _ExperienceComponent(description: 'Worked with a team...', role: 'Mobile Application Developer', startDate: 'March 2021'),
          ],
        ),
      ),
    ]);
  }
}

class _ExperienceComponent extends StatelessWidget {
  const _ExperienceComponent({
    required this.description,
    required this.role,
    required this.startDate,
    this.endDate,
    super.key
  });

  final String description;
  final String role;
  final String startDate;
  final String? endDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        children: [
          Text(
              description,
            style: TextStyle(

            ),
          ),
          Text(role,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontSize: 16
            ),
          ),
          Text('$startDate - $endDate')
        ],
      ),
    );
  }
}

