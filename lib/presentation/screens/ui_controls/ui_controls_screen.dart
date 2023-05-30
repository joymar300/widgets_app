import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI CONTROLS'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportantion { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportantion selectedTransportation = Transportantion.car;
  bool wantsBreakFast = false;
  bool wanstLunch = false;
  bool wanstDinne = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('developer Mode'),
            subtitle: const Text('controles adicionales'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('car'),
                subtitle: const Text('travel on car'),
                value: Transportantion.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.car;
                    })),
            RadioListTile(
                title: const Text('plane'),
                subtitle: const Text('travel on plane'),
                value: Transportantion.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.plane;
                    })),
            RadioListTile(
                title: const Text('submarine'),
                subtitle: const Text('travel on submarine'),
                value: Transportantion.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.submarine;
                    })),
            RadioListTile(
                title: const Text('boat'),
                subtitle: const Text('travel on boat'),
                value: Transportantion.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportantion.boat;
                    })),
          ],
        ),
        CheckboxListTile(
          title: const Text('desayuno?'),
          value: wantsBreakFast,
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Lunch?'),
          value: wanstLunch,
          onChanged: (value) => setState(() {
            wanstLunch = !wanstLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('dinner?'),
          value: wanstDinne,
          onChanged: (value) => setState(() {
            wanstDinne = !wanstDinne;
          }),
        ),
      ],
    );
  }
}
