import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_view_model.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Provider Counter'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Sen shuncha marta FloatActionButtonni bosding'),
          Text('${context.watch<CounterViewModel>().count}', style: const TextStyle(fontSize: 28)),
          IconButton(onPressed: () {
            context.read<CounterViewModel>().decrement();
          }, icon: const Icon(Icons.map))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterViewModel>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
