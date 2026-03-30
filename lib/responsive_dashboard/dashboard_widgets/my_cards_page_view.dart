import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/custom_card.dart';
class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ExpandablePageView(
      scrollDirection: Axis.horizontal,

       children: List.generate(3, (context)=>CustomCard()),
    );
  }
}
