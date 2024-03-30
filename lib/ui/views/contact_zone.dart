import 'package:flutter/cupertino.dart';

import 'component/card_title.dart';

class ContactZone extends StatelessWidget {
  const ContactZone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 128),
      child: Column(
        children: [
          CardTitle(title: 'Thank You For Coming My Portfolio Site!'),
        ],
      ),
    );
  }
}
