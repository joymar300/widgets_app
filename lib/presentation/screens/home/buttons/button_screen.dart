import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtomScreen extends StatelessWidget {
  static const name = 'buttoms_screen';
  const ButtomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: buttonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}

class buttonsView extends StatelessWidget {
  const buttonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('data')),
            ElevatedButton(
                onPressed: () {}, child: const Text('elevate disable')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('elevate icon')),
            FilledButton(onPressed: () {}, child: const Text('filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.account_circle_rounded),
                label: const Text('tulagaming')),
            OutlinedButton(
                onPressed: () {}, child: const Icon(Icons.ad_units_rounded)),
            TextButton(onPressed: () {}, child: const Text('tula')),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.pedal_bike),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            ),
            CustomeButtons(),
          ],
        ),
      ),
    );
  }
}

class CustomeButtons extends StatelessWidget {
  const CustomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: const Text(
                'hola mundo',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
