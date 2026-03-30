


import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/all_expenses.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/quick_invoice.dart';
class AllExpensesAndQuickInvoicesSection extends StatelessWidget {
  const AllExpensesAndQuickInvoicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
        ),
      ),
    );
  }
}
