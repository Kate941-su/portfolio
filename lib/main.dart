import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/blocs/color_theme_bloc.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';
import 'package:rate_converter_flutter/constant/app_color.dart';
import 'package:rate_converter_flutter/gen/fonts.gen.dart';
import 'package:rate_converter_flutter/ui/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorThemeBloc(),
      child: BlocBuilder<ColorThemeBloc, ColorThemeState>(
        builder: (context, state) => MaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          title: 'Kaito Kitaya Porfolio',
          theme: ThemeData(
            primaryColor: AppColor.lightTheme,
            fontFamily: FontFamily.monoline,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            primaryColor: AppColor.darkTheme,
            useMaterial3: true,
          ),
          themeMode: ThemeMode.light,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}

// Widget _counter(BuildContext context, int counter) {
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           counter.toString(),
//           style: Theme.of(context).textTheme.headlineLarge,
//         ),
//         const SizedBox(
//           height: 50,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MaterialButton(
//               color: Colors.red,
//               elevation: 0.0,
//               height: 50,
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//               child: const Text(
//                 "-",
//                 style: TextStyle(fontSize: 22, color: Colors.white),
//               ),
//               onPressed: () {
//                 context
//                     .read<CounterBloc>()
//                     .add(const CounterEvent.numberDecreaseEvent());
//               },
//             ),
//             const SizedBox(
//               width: 50,
//             ),
//             MaterialButton(
//               color: Colors.green,
//               elevation: 0.0,
//               height: 50,
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//               child: const Text(
//                 "+",
//                 style: TextStyle(fontSize: 22, color: Colors.white),
//               ),
//               onPressed: () {
//                 context
//                     .read<CounterBloc>()
//                     .add(const CounterEvent.numberIncreaseEvent());
//               },
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }
