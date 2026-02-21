import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_models/all_expenses_item_model.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/all_expenses_item.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_images.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const List items = [
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April,2022",
      price: r"$170.344",
    ),
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "May,2024",
      price: r"$170.344",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "June,2021",
      price: r"$170.344",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: AllExpensesItem(allExpensesItemModel: item),
                ),
              );
            } else {
              return Expanded(
                child: AllExpensesItem(allExpensesItemModel: item),
              );
            }
          }).toList(),
    );

    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return AllExpensesItem(
    //       allExpensesItemModel: items[index]
    //     );
    //   },
    // );
  }
}
