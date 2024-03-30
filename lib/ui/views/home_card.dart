
import 'package:flutter/cupertino.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 240),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi there! My name is"),
          Text(
            'Kaito Kitaya',
            style: TextStyle(
              fontSize: 64,
              fontFamily: FontFamily.dos
            ),
          ),
          // TODO: Make appropriate sentence.
          Text("I'm a software engineer in Japan. I love to develop application.")
        ],
      ),
    );
  }
}