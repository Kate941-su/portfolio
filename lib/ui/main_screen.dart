import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/counter_bloc.dart';
import '../blocs/state/counter_state.dart';
import '../gen/assets.gen.dart';

final dummyList = List.generate(
    20,
    (index) => Container(
      margin: EdgeInsets.symmetric(vertical: 128, horizontal: 64),
          decoration: BoxDecoration(color: Colors.blue),
          width: 300,
          height: 300,
          child: Text("Hello World",
            style: TextStyle(
              fontFamily: 'Dos',
              fontSize: 36
            ),
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
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => {},
            ),
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
        const SizedBox(
          child: Placeholder(),
          width: 100,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return dummyList[index];
          },
        )),
        const SizedBox(
          child: Placeholder(),
          width: 100,
        ),
      ],
    );
  }
}
