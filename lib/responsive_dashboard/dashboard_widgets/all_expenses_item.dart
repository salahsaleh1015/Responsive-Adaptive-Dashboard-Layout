import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_models/all_expenses_item_model.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/all_expenses_item_header.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          SizedBox(height: 8,),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          SizedBox(height: 16,),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
