import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/icons/icons.dart';
import 'package:responsive_dashboard/global/widgets/drawer_item_listview.dart';
import 'package:responsive_dashboard/global/widgets/drawer_item_widgets.dart';
import 'package:responsive_dashboard/global/widgets/user_tile.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/models/user_model.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userModel: UserModel(
                email: 'demo@gmail.com',
                icon: Assets.iconsAvatar3,
                name: 'Lekan Okeowo',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveItem(
                  drawerItem: DrawerItem(
                    name: 'Setting system',
                    icon: Assets.iconsSettings,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InActiveItem(
                  drawerItem: DrawerItem(
                    name: 'Logout account',
                    icon: Assets.iconsLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
