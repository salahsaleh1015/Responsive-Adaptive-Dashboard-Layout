


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_user_info_list_tile.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';


class DashboardCustomDrawer extends StatelessWidget {
  const DashboardCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(
        children: [
          DashboardUserInfoListTile(
            title: "Lekan Okeowo",
            subTitle:"demo@gmail.com" ,
            image: Assets.imagesAvatar3,
          ),
        ],
      ),
    );
  }
}
