import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/constant/static_url.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../blocs/counter_bloc.dart';
import '../blocs/state/counter_state.dart';
import '../gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

final dummyList = List.generate(
    20,
    (index) => Container(
          margin: EdgeInsets.symmetric(vertical: 128, horizontal: 64),
          decoration: BoxDecoration(color: Colors.blue),
          width: 300,
          height: 300,
          child: Text(
            "Hello World",
            style: TextStyle(fontFamily: 'Dos', fontSize: 36),
          ),
        ));

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Main Menu'),
          actions: [
            TextButton(onPressed: () {}, child: const Text('00. Hello')),
            TextButton(onPressed: () {}, child: const Text('01. About')),
            TextButton(onPressed: () {}, child: const Text('02. Experience')),
            TextButton(onPressed: () {}, child: const Text('03. Portfolio')),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      border: Border.all()),
                  child: const Text('Contact'),
                ),
              ),
              onTap: () {},
            )

            // TODO: Responsible
            // IconButton(
            //   icon: const Icon(Icons.menu),
            //   onPressed: () => {},
            // ),
          ]),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return const _TopView();
        },
      ),
    );
  }
}

class _TopView extends StatelessWidget {
  const _TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48.0),
                child: _SnsIconButton(
                    imagePath: Assets.icons.sns.github.path,
                    linkPath: StaticUrl.github),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48.0),
                child: _SnsIconButton(
                    imagePath: Assets.icons.sns.linkedin.path,
                    linkPath: StaticUrl.linkedin),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 48.0),
                child: _SnsIconButton(
                    imagePath: Assets.icons.sns.x.path,
                    linkPath: StaticUrl.x,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return dummyList[index];
          },
        )),
        // TODO: hide scroll bar
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
            child: SizedBox(
              child: RotatedBox(
                  quarterTurns: 1,
                child: Text(StaticUrl.mail),
              ),
              width: 100,
            ),
          ),
        ),
      ],
    );
  }
}

class _SnsIconButton extends StatelessWidget {
  _SnsIconButton({
    required this.imagePath,
    required this.linkPath,
    this.color,
    super.key});

  String imagePath;
  String linkPath;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchUrlString(linkPath);
      },
      child: SvgPicture.asset(
        imagePath,
        height: 40,
        color: color,
      ),
    );
  }
}
