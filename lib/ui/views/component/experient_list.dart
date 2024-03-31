import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';

final List<Widget> experienceList = [
  const _ExperienceComponent(
    company: 'ibis Inc.',
    description:
        "Joining as a Part-time job when I was a master's degree student. "
        "I gained comprehensive skills in creating cross- platform applications (iOS, Android).",
    role: 'Mobile Application Developer',
    startDate: 'March 2021',
    endDate: 'March 2022',
  ),
  const _ExperienceComponent(
    company: 'YAMAHA Corporation',
    description:
        "I have worked as an embedded software engineer on network equipment. "
        "I also have experience in managing in-corporate network infrastructure in this company.",
    role: 'Embedded Software Engineer',
    startDate: 'April 2022',
    endDate: 'May 2023',
  ),
  const _ExperienceComponent(
    company: 'N zigen Inc',
    description:
        "Experienced in mobile application development and project management,"
        "adept at driving end-to-end project execution, ensuring seamless CI/CD implementation,"
        " and contributing to development efforts.\n\n"
        "Project Management: Lead and coordinate mobile application projects,"
        " ensuring on-time delivery and adherence to quality standards.\n\n"
        "CI/CD Implementation: Establish and maintain robust CI/CD pipelines for"
        " efficient build, test, and deployment processes.\n\n"
        "Development: Proficient"
        " in Flutter, Kotlin, and Swift, with a focus on delivering scalable and feature-rich mobile applications.",
    role: 'Mobile Application Developer',
    startDate: 'May 2023',
  ),
];

class _ExperienceComponent extends StatelessWidget {
  const _ExperienceComponent(
      {required this.company,
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
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) {
      return Container(
        decoration: BoxDecoration(border: Border.all(width: 1), boxShadow: [
          BoxShadow(
            color: Colors.yellow.withOpacity(0.5),
            blurRadius: 4,
            offset: const Offset(0, 3),
          )
        ]),
        width: 720,
        padding: const EdgeInsets.all(64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              company,
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode)),
            ),
            Text(
              role,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontSize: 16,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode)),
            ),
            Text(
              endDate == null
                  ? '$startDate - current'
                  : '$startDate - $endDate',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode)),
            )
          ],
        ),
      );
    });
  }
}
