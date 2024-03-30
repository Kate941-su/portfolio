
import 'package:flutter/cupertino.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi there! My name is"),
        Text(
          'Kaito Kitaya',
          style: TextStyle(
            fontSize: 64,

          ),
        ),
        // TODO: Make appropriate sentence.
        Text("I'm a software engineer in Japan. I love to develop application.")
      ],
    );
  }
}