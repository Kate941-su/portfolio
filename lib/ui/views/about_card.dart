import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';
import 'package:rate_converter_flutter/ui/views/component/card_title.dart';

import '../../gen/assets.gen.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 128),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardTitle(title: '01. About Me'),
              SizedBox(
                width: 400,
                child: Text("Dynamic and versatile technologist with a robust skill set"
                    " spanning mobile application development and cross-platform expertise."
                    " Proficient in Flutter, Swift, and Kotlin, with a keen ability to craft"
                    " elegant solutions tailored to diverse technical domains. With a track"
                    " record of writing Swift and Dart libraries, I bring a unique blend of"
                    " native and cross-platform proficiency to any project. Passionate about"
                    " adopting cutting-edge technologies and adapting to various technical domains,"
                    " I thrive in dynamic environments where innovation and versatility are paramount."
                    " Committed to delivering high-quality, scalable solutions that drive forward-thinking"
                    " initiatives and exceed expectations."),
              )
            ],
          ),
        ),
        SizedBox(
          width: 400,
          height: 500,
          child: Stack(
              children: [
            Positioned(
              bottom: 72,
              right: 72,
              child: Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.redAccent),
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
    );
  }
}
