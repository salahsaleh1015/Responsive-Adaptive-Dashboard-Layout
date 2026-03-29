import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_models/user_info_model.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_user_info_list_tile.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        LatestTransactionListView(),
      ],
    );
  }
}

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
      title: "Madrani Andi",
      image: Assets.imagesAvatar3,
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      title: "Madrani Andi",
      image: Assets.imagesAvatar3,
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      title: "Madrani Andi",
      image: Assets.imagesAvatar3,
      subTitle: "Madraniadi20@gmail",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map(
                  (value) => IntrinsicWidth(
                    child: DashboardUserInfoListTile(userInfoModel: value),
                  ),
                )
                .toList(),
      ),
    );
    /*
    * احنا هنا مش محتاجين الList vew builde
    * عشان عي lazy builder
    * و احنا هنبني عدد قليل من العناصر
    * فا ال Row حل افضل بكتير
    * */
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: DashboardUserInfoListTile(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}
