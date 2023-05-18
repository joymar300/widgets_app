import 'package:flutter/material.dart';

class ButtomScreen extends StatelessWidget {
  static const name = 'buttoms_screen';
  const ButtomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
