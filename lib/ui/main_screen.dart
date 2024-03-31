import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:rate_converter_flutter/constant/static_url.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';
import 'package:rate_converter_flutter/ui/views/about_card.dart';
import 'package:rate_converter_flutter/ui/views/contact_zone.dart';
import 'package:rate_converter_flutter/ui/views/experience_card.dart';
import 'package:rate_converter_flutter/ui/views/home_card.dart';
import 'package:rate_converter_flutter/ui/views/portfolio_zone.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../blocs/debug/debug_bloc.dart';
import '../blocs/event/color_theme_event.dart';
import '../gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ColorThemeIndex {
  light,
  dark,
}

final List<Widget> mainScreenCardList = [
  HomeCard(),
  AboutCard(),
  ExperienceCard(),
  PortfolioZone(),
  ContactZone(),
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
            backgroundColor: state.isLightMode ? Colors.white : Colors.black,
            title: Text(
              'Kaito Kitaya :->',
              style: TextStyle(
                  fontFamily: 'Dos',
                  color: state.isLightMode ? Colors.black : Colors.white),
            ),
            //TODO: Actions are responsible.
            actions: [
              _AppBarCandidateTexts(
                text: '00. Hello',
                onPressed: () {
                  debugPrint('hello');
                },
              ),
              _AppBarCandidateTexts(
                text: '01. About',
                onPressed: () {
                  debugPrint('about');
                },
              ),
              _AppBarCandidateTexts(
                text: '02. Experience',
                onPressed: () {
                  debugPrint('experience');
                },
              ),
              _AppBarCandidateTexts(
                text: '03. Portfolio',
                onPressed: () {
                  debugPrint('portfolio');
                },
              ),
              // InkWell(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 24),
              //     child: Container(
              //       padding: const EdgeInsets.symmetric(
              //           vertical: 10, horizontal: 16),
              //       decoration: BoxDecoration(
              //           borderRadius:
              //               const BorderRadius.all(Radius.circular(5)),
              //           border: Border.all(),
              //           color: state.isLightMode ? null : Colors.white),
              //       child: const Text('Contact'),
              //     ),
              //   ),
              //   onTap: () {},
              // ),
              const _ColorThemeToggleButton(),
            ]),
        body: const _TopView(),
      ),
    );
  }
}

class _TopView extends StatelessWidget {
  const _TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) => ColoredBox(
        color: AppColor.getThemeColor(isLightMode: state.isLightMode),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48.0),
                    child: _SnsIconButton(
                      imagePath: Assets.icons.sns.github.path,
                      linkPath: StaticUrl.github,
                      color: AppColor.getThemeColorInverse(
                          isLightMode: state.isLightMode),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48.0),
                    child: _SnsIconButton(
                      imagePath: Assets.icons.sns.linkedin.path,
                      linkPath: StaticUrl.linkedin,
                      color: AppColor.getThemeColorInverse(
                          isLightMode: state.isLightMode),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48.0),
                    child: _SnsIconButton(
                      imagePath: Assets.icons.sns.x.path,
                      linkPath: StaticUrl.x,
                      color: AppColor.getThemeColorInverse(
                          isLightMode: state.isLightMode),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: mainScreenCardList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(128),
                  child: mainScreenCardList[index],
                );
              },
            )),
            // TODO: hide scroll bar
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                child: SizedBox(
                  width: 100,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: SelectableText(
                      StaticUrl.mail,
                      style: TextStyle(
                        color: AppColor.getThemeColorInverse(
                            isLightMode: state.isLightMode),
                        fontFamily: FontFamily.dos,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorThemeDebug extends DebugPrintBLoc<ColorThemeBloc, ColorThemeState> {
  const _ColorThemeDebug({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) => Text(state.isLightMode.toString()));
  }
}

class _ColorThemeToggleButton extends StatelessWidget {
  const _ColorThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) => LiteRollingSwitch(
              value: state.isLightMode,
              textOn: 'light',
              textOff: 'dark',
              colorOn: Colors.orange,
              colorOff: Colors.black54,
              iconOn: FontAwesomeIcons.sun,
              iconOff: FontAwesomeIcons.moon,
              onTap: () {
                context.read<ColorThemeBloc>().add(
                    ColorThemeEvent.themeToggleEvent(
                        isLightMode: !state.isLightMode));
              },
              onChanged: (_) {},
              onDoubleTap: () {},
              onSwipe: () {},
            ));
  }
}

class _SnsIconButton extends StatelessWidget {
  _SnsIconButton(
      {required this.imagePath, required this.linkPath, this.color, super.key});

  String imagePath;
  String linkPath;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrlString(linkPath);
      },
      child: SvgPicture.asset(
        imagePath,
        height: 40,
        color: color,
      ),
    );
  }
}

class _AppBarCandidateTexts extends StatelessWidget {
  _AppBarCandidateTexts({
    required this.text,
    super.key,
    required this.onPressed,
  });

  String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) => TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: FontFamily.dos,
                  color: state.isLightMode ? Colors.black54 : Colors.white),
            )));
  }
}
