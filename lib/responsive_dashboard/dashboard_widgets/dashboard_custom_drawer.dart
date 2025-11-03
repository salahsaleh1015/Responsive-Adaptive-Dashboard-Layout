import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/adaptive_app/adaptive_app_widgets/custom_drawer.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_models/dashboard_drawer_item_model.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_drawer_item.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_user_info_list_tile.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';

class DashboardCustomDrawer extends StatelessWidget {
  const DashboardCustomDrawer({super.key});

  static const List<DashboardDrawerItemModel> items = [
    DashboardDrawerItemModel(
      title: "Dashboard",
      iconPath: Assets.imagesDashboard,
    ),
    DashboardDrawerItemModel(
      title: "My Transaction",
      iconPath: Assets.imagesMyTransctions,
    ),
    DashboardDrawerItemModel(
      title: "Statistics",
      iconPath: Assets.imagesStatistics,
    ),
    DashboardDrawerItemModel(
      title: "Wallet Account",
      iconPath: Assets.imagesWalletAccount,
    ),
    DashboardDrawerItemModel(
      title: "My Investments",
      iconPath: Assets.imagesMyInvestments,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          DashboardUserInfoListTile(
            title: "Lekan Okeowo",
            subTitle: "demo@gmail.com",
            image: Assets.imagesAvatar3,
          ),
          SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>DashboardDrawerItem(
              drawerItemModel: items[index],
            ),
            itemCount: items.length,
          ),
        ],
      ),
    );
  }
}
