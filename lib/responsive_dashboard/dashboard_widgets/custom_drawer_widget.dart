


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/user_info_list_tile.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            title: "Lekan Okeowo",
            subTitle:"demo@gmail.com" ,
            image: Assets.imagesAvatar3,
          ),
        ],
      ),
    );
  }
}
