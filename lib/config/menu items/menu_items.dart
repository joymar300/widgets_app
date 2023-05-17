import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData iconData;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.iconData});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'botones',
      subTitle: 'lista de botones',
      link: '/buttons',
      iconData: Icons.smart_button_outlined),
  MenuItems(
      title: 'botones',
      subTitle: 'lista de botones',
      link: '/buttons',
      iconData: Icons.credit_card),
];
