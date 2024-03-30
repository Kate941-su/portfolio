import 'package:flutter/cupertino.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    required this.title,
    required this.color,
    super.key
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: TextStyle(
          fontFamily: FontFamily.dos,
          fontWeight: FontWeight.bold,
          fontSize: 48,
          color: color,
        ),
    );
  }
}
