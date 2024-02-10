import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/icons/icons.dart';
import 'package:responsive_dashboard/global/widgets/user_tile.dart';
import 'package:responsive_dashboard/models/user_model.dart';

class LatestUserTransactionListView extends StatefulWidget {
  const LatestUserTransactionListView({super.key});

  @override
  State<LatestUserTransactionListView> createState() =>
      _LatestUserTransactionListViewState();
}

class _LatestUserTransactionListViewState
    extends State<LatestUserTransactionListView> {
  final List<UserModel> users = [
    const UserModel(
        icon: Assets.iconsAvatar1,
        email: 'Madraniadi20sjsjsjjsjsjsjsjsjsjsjjsjsjs@gmail',
        name: 'Madrani Andi'),
    const UserModel(
        icon: Assets.iconsAvatar2,
        email: 'Josh Nunito@gmail.com',
        name: 'Josua Nunito'),
    const UserModel(
        icon: Assets.iconsAvatar3,
        email: 'Madraniadi20@gmail.com',
        name: 'Madrani Andi'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              IntrinsicWidth(child: UserInfoListTile(userModel: users[index])),
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemCount: users.length,
        ));
  }
}
