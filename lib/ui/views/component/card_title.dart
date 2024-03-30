import 'package:flutter/cupertino.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    required this.title,
    super.key
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: const TextStyle(
          fontFamily: FontFamily.dos,
          fontWeight: FontWeight.bold,
          fontSize: 48
        ),
    );
  }
}
