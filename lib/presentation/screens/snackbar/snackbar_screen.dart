import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
  void showCunstomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('data'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('are you sure?'),
        content: const Text('tula gamimng tula gaming tula gaming'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('sisa'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('snackbar')),
      body: Center(
          child: Column(
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context);
              },
              child: const Text('data')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('mostrar dialogo')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCunstomSnackbar(context),
        label: const Text('show mensaje'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
