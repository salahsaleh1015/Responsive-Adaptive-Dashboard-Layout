


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/project_widgets/adaptive_layout.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_mobile_layout.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/dashboard_tablet_layout.dart';


import '../dashboard_widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(
      desktopLayout: (BuildContext context)=> DashboardDesktopLayout(),
      tabletLayout: (BuildContext context)=> DashBoardTabletLayout(),
      mobileLayout: (BuildContext context) =>DashboardMobileLayout(),);
  }
}
