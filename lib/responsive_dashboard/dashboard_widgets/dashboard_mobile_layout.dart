
import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/income_section.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/my_cards_and_transction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: ListView(
        children: [
          Expanded(child: MyCardsAndTransctionHistorySection()),
          SizedBox(height: 16),
          Expanded(child: IncomeSection()),
        ],
      ),
    );
  }
}
