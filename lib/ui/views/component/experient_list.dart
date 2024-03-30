import 'package:flutter/material.dart';

final List<Widget> dummyList = [
  Text("data"),
  Text("data"),
  Text("data"),
  Text("data"),
];

final List<Widget> experienceList = [
  const _ExperienceComponent(
    company: 'ibis Inc.',
    description:
        "Joining as a Part-time job since I was a master's degree student\n"
        "Continuously refined development skills through ongoing education and\n"
        " training opportunities, staying current with industry advancements.\n"
        "Streamlined codebase using version control systems such as Git to\n"
        " maintain organized repositories for collaborative projects easily accessible to team members.\n"
        "I have comprehensive skills in creating cross- platform applications (iOS, Android).\n",
    role: 'Mobile Application Developer',
    startDate: 'March 2021',
    endDate: 'March 2022',
  ),
  const _ExperienceComponent(
    company: 'YAMAHA Corporation',
    description:
        "I have worked as an embedded software engineer on network equipment\n"
        "I also have experience in managing in-corporate network infrastructure in this company.\n",
    role: 'Mobile Application Developer',
    startDate: 'April 2022',
    endDate: 'May 2023',
  ),
  const _ExperienceComponent(
    company: 'N zigen Inc',
    description:
        "Experienced in mobile application development and project management, \n"
        "adept at driving end-to-end project execution, ensuring seamless CI/CD implementation,\n"
        " and contributing to development efforts. Key responsibilities include:\n"
        "Project Management: Lead and coordinate mobile application projects,\n"
        " ensuring on-time delivery and adherence to quality standards.\n"
        "CI/CD Implementation: Establish and maintain robust CI/CD pipelines for\n"
        " efficient build, test, and deployment processes. Development: Proficient\n"
        " in Flutter, Kotlin, and Swift, with a focus on delivering scalable and feature-rich mobile applications.\n",
    role: 'Mobile Application Developer',
    startDate: 'May 2023',
  ),
];

class _ExperienceComponent extends StatelessWidget {
  const _ExperienceComponent(
      {
        required this.company,
        required this.description,
      required this.role,
      required this.startDate,
      this.endDate,
      super.key});

  final String company;
  final String description;
  final String role;
  final String startDate;
  final String? endDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1
        ),
        boxShadow: [BoxShadow(
          color: Colors.yellow.withOpacity(0.5),
          blurRadius: 4,
          offset: const Offset(0,3),
        )]
      ),
      width: 720,
      padding: const EdgeInsets.all(64.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            role,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontSize: 16),
          ),
          Text(
            description,
          ),
          Text( endDate == null ? '$startDate - current' : '$startDate - $endDate',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
