import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/counter_provider.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'Counter riverpod';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int ClickCounter = ref.watch(counterProvider);
    final bool darkMode = ref.watch(isDarkmode);

    return Scaffold(
      appBar: AppBar(
        title: const Text('counter riverpod'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkmode.notifier).update((state) => !state);
              },
              icon: Icon(darkMode
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined))
        ],
      ),
      body: Center(
          child: Text(
        'el numero de taps es: $ClickCounter',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          //ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: Icon(Icons.plus_one_rounded),
      ),
    );
  }
}
