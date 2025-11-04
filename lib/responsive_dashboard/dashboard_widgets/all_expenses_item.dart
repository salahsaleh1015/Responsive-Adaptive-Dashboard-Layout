import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 0.1, color: Colors.grey),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
             image: '',
          ),
        ],
      ),
    );
  }
}
