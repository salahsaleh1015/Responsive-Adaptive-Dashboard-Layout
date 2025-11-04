



import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 0.1, color: Colors.grey),
        ),

      ),
      child: Row(
        children: [
          Text("Monthly",style: AppStyles.styleMedium16(context),),
          SizedBox(width: 12,),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
