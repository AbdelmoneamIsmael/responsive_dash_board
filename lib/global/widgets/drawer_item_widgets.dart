import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/utils/app_styels.dart';

class DrawerItemWidgets extends StatelessWidget {
  const DrawerItemWidgets(
      {super.key, required this.drawerItem, required this.isActive});
  final DrawerItem drawerItem;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(drawerItem: drawerItem)
        : InActiveItem(drawerItem: drawerItem);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItem drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.icon),
      title: Text(drawerItem.name, style: AppStyles.styleBold16),
      trailing: Container(
        width: 3.27,
        height: 48,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItem drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.icon),
      title: Text(drawerItem.name, style: AppStyles.styleMedium16),
    );
  }
}
