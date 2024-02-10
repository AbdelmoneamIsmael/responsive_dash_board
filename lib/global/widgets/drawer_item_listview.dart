import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/icons/icons.dart';
import 'package:responsive_dashboard/global/widgets/drawer_item_widgets.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItem> drawerItems = [
    const DrawerItem(name: 'Dashboard', icon: Assets.iconsDashboard),
    const DrawerItem(name: 'My Transaction', icon: Assets.iconsMyTransctions),
    const DrawerItem(name: 'Statistics', icon: Assets.iconsStatistics),
    const DrawerItem(name: 'Wallet Account', icon: Assets.iconsWalletAccount),
    const DrawerItem(name: 'My Investments', icon: Assets.iconsMyInvestments),
  ];
  int tapedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (tapedIndex != index) {
            setState(() {
              tapedIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItemWidgets(
              drawerItem: drawerItems[index], isActive: index == tapedIndex),
        ),
      ),
    );
  }
}
