import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:rate_converter_flutter/constant/configuration.dart';
import 'package:rate_converter_flutter/ui/views/component/card_title.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../gen/assets.gen.dart';

class AboutCard extends HookWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(false);

    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) => VisibilityDetector(
        key: const Key('about-card'),
        onVisibilityChanged: (VisibilityInfo info) {
          if (info.visibleFraction > 0.2) {
            isVisible.value = true;
          } else {
            isVisible.value = false;
          }
        },
        child: Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: AnimatedOpacity(
            duration: Configuration.animeDuration500,
            opacity: isVisible.value ? 1.0 : 0.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 128),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(
                        title: '01. About Me',
                        color: AppColor.getThemeColorInverse(
                            isLightMode: state.isLightMode),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          "Dynamic and versatile technologist with a robust skill set"
                          " spanning mobile application development and cross-platform expertise."
                          " Proficient in Flutter, Swift, and Kotlin, with a keen ability to craft"
                          " elegant solutions tailored to diverse technical domains. With a track"
                          " record of writing Swift and Dart libraries, I bring a unique blend of"
                          " native and cross-platform proficiency to any project. Passionate about"
                          " adopting cutting-edge technologies and adapting to various technical domains,"
                          " I thrive in dynamic environments where innovation and versatility are paramount."
                          " Committed to delivering high-quality, scalable solutions that drive forward-thinking"
                          " initiatives and exceed expectations.",
                          style: TextStyle(
                              color: AppColor.getThemeColorInverse(
                                  isLightMode: state.isLightMode)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 500,
                  child: Stack(children: [
                    Positioned(
                      bottom: 72,
                      right: 72,
                      child: Container(
                          width: 300,
                          height: 400,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: Colors.redAccent),
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ),
                    Container(
                        width: 300,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Assets.images.facePhoto.provider(),
                              fit: BoxFit.cover),
                          border: Border.all(width: 2, color: Colors.redAccent),
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
