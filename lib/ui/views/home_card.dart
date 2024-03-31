import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:rate_converter_flutter/constant/configuration.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 240),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi there! My name is",
              style: TextStyle(
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode)),
            ),
            DefaultTextStyle(
              style: TextStyle(
                  fontSize: 64,
                  fontFamily: FontFamily.dos,
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode)),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Kaito Kitaya',
                      speed: Configuration.animeDuration250),
                ],
              ),
            ),
            Text(
              "I'm a software engineer in Japan. I love to develop application.\n",
              style: TextStyle(
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode)),
            ),
            Row(
              children: [
                Text(
                  'I have a great ability to develop by using',
                  style: TextStyle(
                      color: AppColor.getThemeColorInverse(
                          isLightMode: state.isLightMode)),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText('Dart/Flutter'),
                        ScaleAnimatedText('Swift'),
                        ScaleAnimatedText('Kotlin'),
                        ScaleAnimatedText('Python'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
