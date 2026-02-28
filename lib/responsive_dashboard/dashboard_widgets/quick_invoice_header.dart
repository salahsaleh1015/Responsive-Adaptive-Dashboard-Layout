



import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice",style: AppStyles.styleSemiBold20(context),),
        Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: ShapeDecoration(
              color: Color(0xfffafafa),
              shape: OvalBorder(  )),
          child: Center(
            child: Icon(
              Icons.add,
              color: Color(0xff4eb7f2),
            ),
          ),

        )
      ],
    );
  }
}