
import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_models/dashboard_drawer_item_model.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_drawer_item.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';

class DashboardDrawerItemListView extends StatefulWidget {
  const DashboardDrawerItemListView({super.key});

  @override
  State<DashboardDrawerItemListView> createState() =>
      _DashboardDrawerItemListViewState();
}

class _DashboardDrawerItemListViewState
    extends State<DashboardDrawerItemListView> {
  final List<DashboardDrawerItemModel> items = [
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

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemBuilder:
          (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: DashboardDrawerItem(
          isActive: activeIndex == index,
          drawerItemModel: items[index],
        ),
      ),
      itemCount: items.length,
    );
  }
}
