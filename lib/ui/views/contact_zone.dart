import 'package:flutter/cupertino.dart';

import 'component/card_title.dart';

class ContactZone extends StatelessWidget {
  const ContactZone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(right: 128),
        child: Column(
          children: [
            CardTitle(title: '04. Contact'),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n"
                " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, \n"
                "when an unknown printer took a galley of type and scrambled it to make a type \n"
                "specimen book. It has survived not only five centuries, but also the leap into \n"
                "electronic typesetting, remaining essentially unchanged. It was popularised in \n"
                "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,\n"
                " and more recently with desktop publishing software like Aldus PageMaker including\n"
                " versions of Lorem Ipsum."),
          ],
        ),
      ),
    ]);
  }
}
