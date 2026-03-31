import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/detailed_income_chart.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/income_chart.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/income_details.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/size_config.dart';

// class IncomSectionBody extends StatelessWidget {
//   const IncomSectionBody({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.sizeOf(context).width;
//     return width >= SizeConfig.desktop && width < 1750
//         ? const Expanded(
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: DetailedIncomeChart(),
//         ))
//         : const Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Expanded(child: IncomeChart()),
//         Expanded(flex: 2, child: IncomeDetails()),
//       ],
//     );
//   }
// }

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width >= SizeConfig.desktop && width < 1750) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: DetailedIncomeChart(), // no Expanded here
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(child: IncomeChart()),
          Expanded(flex: 2, child: IncomeDetails()),
        ],
      );
    }
  }
}