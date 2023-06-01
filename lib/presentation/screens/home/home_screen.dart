import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu%20items/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatefulWidget {
  static const name = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('hola'),
      ),
      body: const _homeView(),
      drawer: SideMenu(
        ScaffoldKey: scaffoldKey,
      ),
    );
  }
}

class _homeView extends StatelessWidget {
  const _homeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomListTile(
          menuItems: appMenuItems[index],
        );
      },
    );
  }
}

class CustomListTile extends StatelessWidget {
  final MenuItems menuItems;
  const CustomListTile({
    super.key,
    required this.menuItems,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItems.iconData, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subTitle),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtomScreen(),
        //   ),
        // );

        // Navigator.pushNamed(context, menuItems.link);
        context.push(menuItems.link);
        // context.pushNamed(CardsScreen.name);
      },
    );
  }
}
