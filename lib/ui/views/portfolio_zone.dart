import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/gen/assets.gen.dart';

import 'component/card_title.dart';

class PortfolioZone extends StatelessWidget {
  const PortfolioZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CardTitle(title: '03. Portfolio'),
        Padding(
          padding: const EdgeInsets.all(32),
          child: _PortfolioCard(
            leftItem: _ImageCard(
              image: Assets.images.yoga,
            ),
            rightItem: _DescriptionCard(
              title: 'Simple Blood Pressure Manager',
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                  "when an unknown printer took a galley of type and scrambled it to make a type "
                  "specimen book. It has survived not only five centuries, but also the leap into "
                  "electronic typesetting, remaining essentially unchanged. It was popularised in "
                  "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,"
                  " and more recently with desktop publishing software like Aldus PageMaker including"
                  " versions of Lorem Ipsum.",
              technicalStacks: '',
              hyperLink: null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: _PortfolioCard(
            rightItem: _ImageCard(
              image: Assets.images.cat,
            ),
            leftItem: _DescriptionCard(
              title: 'Simple Blood Pressure Manager',
              description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n"
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \n"
                  "when an unknown printer took a galley of type and scrambled it to make a type \n"
                  "specimen book. It has survived not only five centuries, but also the leap into \n"
                  "electronic typesetting, remaining essentially unchanged. It was popularised in \n"
                  "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n"
                  " and more recently with desktop publishing software like Aldus PageMaker including\n"
                  " versions of Lorem Ipsum.",
              technicalStacks: '',
              hyperLink: null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: _PortfolioCard(
            leftItem: _ImageCard(
              image: Assets.images.yoga,
            ),
            rightItem: _DescriptionCard(
              title: 'Simple Blood Pressure Manager',
              description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n"
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \n"
                  "when an unknown printer took a galley of type and scrambled it to make a type \n"
                  "specimen book. It has survived not only five centuries, but also the leap into \n"
                  "electronic typesetting, remaining essentially unchanged. It was popularised in \n"
                  "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n"
                  " and more recently with desktop publishing software like Aldus PageMaker including\n"
                  " versions of Lorem Ipsum.",
              technicalStacks: '',
              hyperLink: null,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: _PortfolioCard(
            rightItem: _ImageCard(
              image: Assets.images.yoga,
            ),
            leftItem: _DescriptionCard(
              title: 'Simple Blood Pressure Manager',
              description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                  "when an unknown printer took a galley of type and scrambled it to make a type "
                  "specimen book. It has survived not only five centuries, but also the leap into \n"
                  "electronic typesetting, remaining essentially unchanged. It was popularised in \n"
                  "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n"
                  " and more recently with desktop publishing software like Aldus PageMaker including\n"
                  " versions of Lorem Ipsum.",
              technicalStacks: '',
              hyperLink: null,
            ),
          ),
        ),
      ],
    );
  }
}

class _PortfolioCard extends StatelessWidget {
  const _PortfolioCard({
    required this.leftItem,
    required this.rightItem,
    super.key,
  });

  final Widget leftItem;
  final Widget rightItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(128),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leftItem,
          rightItem,
        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({required this.image, super.key});

  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    return image.image(width: 500, height: 300);
  }
}

class _DescriptionCard extends StatelessWidget {
  _DescriptionCard(
      {required this.title,
      required this.technicalStacks,
      required this.description,
      this.hyperLink,
      super.key});

  final String title;
  final String description;
  final String technicalStacks;
  String? hyperLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 64),
      child: SizedBox(
        width: 400,
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Featured Project',
              style:
                  TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: AutoSizeText(
                    description,
                  maxLines: 10,
                  minFontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
