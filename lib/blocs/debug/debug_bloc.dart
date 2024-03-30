import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class DebugPrintBLoc<T extends StateStreamable<U>, U>
    extends StatelessWidget {
  const DebugPrintBLoc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, U>(
        builder: (context, state) => Text(state.toString()));
  }
}