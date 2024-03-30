import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rate_converter_flutter/ui/views/component/experient_list.dart';

import 'component/card_title.dart';

class ExperienceCard extends HookWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(viewportFraction: 0.8);
    final indexState = useState<int>(0);
    useEffect((){
      print('object');
    },[
      indexState.value
    ]);
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 128),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle(title: '02. Experience'),
            SizedBox(
              width: 500,
              height: 600,
              child: PageView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyList.length,
                  itemBuilder: (context, index) {
                    return AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastEaseInToSlowEaseOut,
                        padding:
                            EdgeInsets.all(indexState.value == index ? 0 : 8),
                        child: dummyList[index]);
                  }),
            )
          ],
        ),
      ),
    ]);
  }
}
