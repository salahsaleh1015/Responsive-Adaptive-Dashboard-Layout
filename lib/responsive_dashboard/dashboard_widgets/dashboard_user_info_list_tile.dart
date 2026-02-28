import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_models/user_info_model.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

class DashboardUserInfoListTile extends StatelessWidget {
  const DashboardUserInfoListTile({
    super.key, required this.userInfoModel,

  });

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(userInfoModel.subTitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
