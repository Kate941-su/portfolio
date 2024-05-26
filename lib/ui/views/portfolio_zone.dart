import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:rate_converter_flutter/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../blocs/state/color_theme_state.dart';
import 'component/card_title.dart';

enum JobKind {
  selfDevelopment('Self Development'),
  featureProject('Featured Project');

  const JobKind(this.name);

  final String name;
}

class Position {
  Position({required this.x, required this.y});

  double x;
  double y;
}

Position basePosition = Position(x: 64, y: 64);

class PortfolioZone extends StatelessWidget {
  const PortfolioZone({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardTitle(
            title: '03. Portfolio',
            color:
                AppColor.getThemeColorInverse(isLightMode: state.isLightMode),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: _PortfolioCard(
              leftItem: _ImageCard(
                image: Assets.images.simpleBloodPressure,
              ),
              rightItem: _DescriptionCard(
                title: 'Simple Blood Pressure Manager',
                jobKind: JobKind.selfDevelopment.name,
                description:
                    "A convenient app with a simple UI that can be used by a wide range of people, from young people to the elderly.If you tap the date and enter the blood pressure, pulse, and time of the measurement, it will be automatically registered in the calendar.In addition, by selecting the period of measurement day, a graph of systolic and diastolic blood pressure within the period will be displayed, allowing you to visualize the change in blood pressure.",
                technicalStacks: 'Dart|Flutter',
                hyperLink:
                    'https://play.google.com/store/apps/details?id=com.kaitokitaya.pressure_management&hl=ja&gl=US',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: _PortfolioCard(
              rightItem: _ImageCard(
                image: Assets.images.swiftPackage,
              ),
              leftItem: _DescriptionCard(
                title: 'Sio (Swift Package)',
                jobKind: JobKind.selfDevelopment.name,
                description:
                    "This library is affected by Dio which is one of the most common http client library in Flutter. Dio has a lot of features that are very useful of http connection. Sio picks up some useful features from Dio and implement them as a wrapper of URLSession, which library also deal with http connection.",
                technicalStacks: 'Swift',
                hyperLink: 'https://cocoapods.org/pods/Sio',
              ),
            ),
          ),
          _PortfolioCard(
            leftItem: _ImageCard(
              image: Assets.images.dartPackage,
            ),
            rightItem: _DescriptionCard(
              title: 'Unused Import Remover',
              jobKind: JobKind.selfDevelopment.name,
              description:
                  "When you or your team develop a huge project using Flutter or Dart, it sometimes happens that many Dart files have unused import and output warning messages by Dart Analysis. If you feel it is annoying, use the unused_import_remover package, which helps you with such an annoying problem.",
              technicalStacks: 'Dart',
              hyperLink: 'https://pub.dev/packages/unused_import_remover',
            ),
          ),
          _PortfolioCard(
            rightItem: _ImageCard(
              image: Assets.images.portfolio,
            ),
            leftItem: _DescriptionCard(
              title: 'This Portfolio',
              jobKind: JobKind.selfDevelopment.name,
              description:
                  "This portfolio shows my UI, state management skills, and six sense!(haha). Mobile application developer has to have multiple skills about UI, state management, REST and so on and has to output these ones. That's why I created it from scratch.",
              technicalStacks: 'Dart|Flutter|BLoC(state management)',
              hyperLink: 'https://github.com/Kate941-su/portfolio',
            ),
          ),
          _PortfolioCard(
            leftItem: _ImageCard(
              image: Assets.images.dental,
            ),
            rightItem: _DescriptionCard(
              title: 'LP site (Nakaze Dental Clinic)',
              jobKind: JobKind.selfDevelopment.name,
              description:
                  "My first self development site which applied individually. The philosophy of this web site is very simple but contains every crucial information. I can adapt my customer's needs even if that is not my own field.",
              technicalStacks: 'HTML|SCSS|Javascript',
              hyperLink: 'https://hamamatsu-nakaze-dental.com/',
            ),
          ),
          _PortfolioCard(
            rightItem: _ImageCard(
              image: Assets.images.liveApp,
            ),
            leftItem: _DescriptionCard(
              title: 'Broadcast Live Application',
              jobKind: JobKind.featureProject.name,
              description:
                  "This live streaming application is developed by Flutter. But a lot of features are written in native languages."
                  "I developed core features and many UIs in this project. In addition, I set up VRT and CI/CD environment(Github Actions).",
              technicalStacks: 'Flutter|Dart|Swift|Kotlin',
            ),
          ),
          _PortfolioCard(
            leftItem: _ImageCard(
              image: Assets.images.paint,
            ),
            rightItem: _DescriptionCard(
              title: 'Painting Application',
              jobKind: JobKind.featureProject.name,
              description:
                  "This is my first team project. I developed some new features that are needed high level mathematics and deep knowledge of C++. But I could gain many important things to develop mobile applications.",
              technicalStacks: 'C++|objective C',
            ),
          ),
          _PortfolioCard(
            rightItem: _ImageCard(
              image: Assets.images.imageWorldInfo,
            ),
            leftItem: _DescriptionCard(
              title: 'World Info',
              jobKind: JobKind.selfDevelopment.name,
              description:
                  "This app is developed by Flutter and BLoc as a state management tool. What is your motivation to use BLoC as such a tool? It's my curious!! Even if the country where I am from mainly uses Riverpod, I wanted to learn and use it!! I don't care to learn any new things even I can enjoy it!",
              technicalStacks: 'Dart|Flutter|BLoC(state management), ',
              hyperLink:
                  'https://apps.apple.com/sk/app/wolrd-info/id6499090215',
              hyperLinkDescription: '(Apple Store)',
              hyperLink2:
                  'https://play.google.com/store/apps/details?id=com.worldinfo.app',
              hyperLinkDescription2: '(Google Play Store)',
            ),
          ),
        ],
      ),
    );
  }
}

class _PortfolioCard extends HookWidget {
  const _PortfolioCard({
    required this.leftItem,
    required this.rightItem,
    super.key,
  });

  final Widget leftItem;
  final Widget rightItem;

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(false);
    return Padding(
      padding: const EdgeInsets.all(128),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leftItem,
          const SizedBox.square(
            dimension: 24,
          ),
          rightItem,
        ],
      ),
    );
  }
}

class _ImageCard extends HookWidget {
  const _ImageCard({required this.image, super.key});

  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 100));

    useAnimation(animationController);
    final isHover = useState<bool>(false);
    late Animation animationTween;

    final elevatedAnimation =
        Tween<double>(begin: 1.0, end: 2.0).animate(animationController);

    useEffect(() {
      return null;
    }, []);

    return MouseRegion(
      onEnter: (_) {
        isHover.value = true;
      },
      onExit: (_) {
        isHover.value = false;
      },
      child: SizedBox(
        width: 400,
        height: 400,
        child: Stack(children: [
          AnimatedPositioned(
            bottom: isHover.value ? basePosition.y + 12 : basePosition.y,
            right: isHover.value ? basePosition.x + 12 : basePosition.x,
            duration: const Duration(milliseconds: 500),
            child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.redAccent),
                  borderRadius: BorderRadius.circular(12),
                )),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: image.image(width: 300, height: 300),
          )
        ]),
      ),
    );
  }
}

class _DescriptionCard extends StatelessWidget {
  _DescriptionCard(
      {required this.title,
      required this.technicalStacks,
      required this.description,
      required this.jobKind,
      this.hyperLink,
      this.hyperLinkDescription,
      this.hyperLink2,
      this.hyperLinkDescription2,
      super.key});

  final String title;
  final String description;
  final String technicalStacks;
  final String jobKind;
  String? hyperLink;
  String? hyperLink2;
  String? hyperLinkDescription;
  String? hyperLinkDescription2;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(right: 64),
        child: SizedBox(
          width: 600,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobKind,
                style: const TextStyle(
                    color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColor.getThemeColorInverse(
                        isLightMode: state.isLightMode)),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: AutoSizeText(
                    description,
                    maxLines: 10,
                    minFontSize: 16,
                    style: TextStyle(
                        color: AppColor.getThemeColorInverse(
                            isLightMode: state.isLightMode)),
                  ),
                ),
              ),
              Text(
                technicalStacks,
                style: TextStyle(
                  color: AppColor.getThemeColorInverse(
                      isLightMode: state.isLightMode),
                ),
              ),
              if (hyperLink != null)
                _HyperLinkCard(
                  hyperLink: hyperLink!,
                  text: hyperLinkDescription,
                ),
              if (hyperLink2 != null)
                _HyperLinkCard(
                  hyperLink: hyperLink2!,
                  text: hyperLinkDescription2,
                )
            ],
          ),
        ),
      );
    });
  }
}

class _HyperLinkCard extends StatelessWidget {
  const _HyperLinkCard({required this.hyperLink, this.text, super.key});

  final String hyperLink;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) {
      return Row(
        children: [
          IconButton(
            icon: Icon(FontAwesomeIcons.link,
                color: AppColor.getThemeColorInverse(
                    isLightMode: state.isLightMode)),
            onPressed: () {
              launchUrlString(hyperLink);
            },
          ),
          if (text != null) Text(text!)
        ],
      );
    });
  }
}
