import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';

import '../../../gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class SkillCardGrid extends StatelessWidget {
  SkillCardGrid({super.key});
  
  final List<Widget> _skillCardList = [
    SkillCard(imagePath: Assets.icons.skill.flutter.path, title: 'flutter',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.bloc.path, title: 'bloc',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.riverpod.path, title: 'riverpod',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.android.path, title: 'Android',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.apple.path, title: 'iOS',isSpecial: true,color: Colors.grey,),
    SkillCard(imagePath: Assets.icons.skill.kotlin.path, title: 'kotlin',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.swift.path, title: 'swift',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.githubactions.path, title: 'Github Actions',isSpecial: true,),
    SkillCard(imagePath: Assets.icons.skill.typescript.path, title: 'typescript'),
    SkillCard(imagePath: Assets.icons.skill.cp.path, title: 'c++'),
    SkillCard(imagePath: Assets.icons.skill.python.path, title: 'python'),
    SkillCard(imagePath: Assets.icons.skill.linux.path, title: 'linux'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 800,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _skillCardList.length,
        itemBuilder: (context, index) => _skillCardList[index],
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  SkillCard({
    required this.imagePath,
    required this.title,
    this.isSpecial,
    this.color,
    super.key
  });

  final String imagePath;
  final String title;
  bool? isSpecial;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(top: 32.0),
          child: Stack(
            children: [SizedBox(
              width: 250,
              height: 250,
              child: Column(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                    child: imagePath.split('.').last == 'svg'
                      ? SvgPicture.asset(imagePath, color: color,)
                      : Image.asset(imagePath),
                ),
                  const SizedBox.square(dimension: 24,),
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Dos',
                      color: AppColor.getThemeColorInverse(isLightMode: state.isLightMode),
                    ),
                  )
                ],
              ),
            ),
              if (isSpecial != null && isSpecial!)
              const Icon(
                  FontAwesomeIcons.solidStar,
                color: Colors.yellow,
              ),
            ]
          ),
        );
      }
    );
  }
}
