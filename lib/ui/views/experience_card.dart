import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/configuration.dart';
import 'package:rate_converter_flutter/ui/views/component/experient_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../constant/app_color.dart';
import 'component/card_title.dart';

class ExperienceCard extends HookWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(viewportFraction: 0.75);
    final indexState = useState<int>(0);
    final isVisible = useState<bool>(false);

    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) => VisibilityDetector(
        key: const Key('experience_card'),
        onVisibilityChanged: (VisibilityInfo info) {
          if (info.visibleFraction > 0.3) {
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
            opacity: isVisible.value ? 1.0 : 0.0,
            duration: Configuration.animeDuration500,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 128),
                child: SizedBox(
                  width: 900,
                  height: 720,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(
                        title: '02. Experience',
                        color: AppColor.getThemeColorInverse(
                            isLightMode: state.isLightMode),
                      ),
                      Flexible(
                        child: PageView.builder(
                            controller: controller,
                            onPageChanged: (index) {
                              indexState.value = index;
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: experienceList.length,
                            itemBuilder: (context, index) {
                              return AnimatedPadding(
                                  duration: Configuration.animeDuration500,
                                  curve: Curves.fastEaseInToSlowEaseOut,
                                  padding: EdgeInsets.all(
                                      indexState.value == index ? 0 : 8),
                                  child: experienceList[index]);
                            }),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(32),
                          child: SmoothPageIndicator(
                            count: experienceList.length,
                            controller: controller,
                            effect: const ScrollingDotsEffect(
                              activeStrokeWidth: 2.6,
                              activeDotScale: 1.3,
                              maxVisibleDots: 5,
                              radius: 8,
                              spacing: 10,
                              dotHeight: 12,
                              dotWidth: 12,
                            ),
                            onDotClicked: (index) {
                              // TODO: Change history by clicking circle list.
                              // indexState.value = index;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
