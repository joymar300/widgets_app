import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme Changer';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final darkMode = ref.watch(isDarkmode);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
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
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final selectColor = ref.watch(selectedColorProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final color = colors[index];
        return RadioListTile(
            title: Text('Color', style: TextStyle(color: color)),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index,
            groupValue: selectColor,
            onChanged: (value) {
              ref
                  .read(selectedColorProvider.notifier)
                  .update((state) => state = index);

              // todo: notificar el cambio
            });
      },
    );
  }
}
