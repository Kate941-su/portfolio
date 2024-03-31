import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';

import '../../constant/app_color.dart';
import 'component/card_title.dart';

class ContactZone extends StatelessWidget {
  const ContactZone({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(right: 128),
        child: Column(
          children: [
            CardTitle(
              title: 'My Skills',
              color:
                  AppColor.getThemeColorInverse(isLightMode: state.isLightMode),
            ),
          ],
        ),
      );
    });
  }
}
