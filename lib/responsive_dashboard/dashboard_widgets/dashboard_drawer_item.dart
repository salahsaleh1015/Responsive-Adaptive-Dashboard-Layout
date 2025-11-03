import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/active_and_inActive_drawer_iteem.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

import '../dashboard_models/dashboard_drawer_item_model.dart';

class DashboardDrawerItem extends StatelessWidget {
  const DashboardDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DashboardDrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
