import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/dashboard_widgets/my_cards_page_view.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
        color: isActive ? Color(0xff4eb7f2) : Color(0xffe8e8e8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      duration: Duration(milliseconds: 300),
    );
  }
}



class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex, });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return  Row(
    children:
      List.generate(3, (index)=>CustomDotIndicator(
        isActive:  index == currentIndex,
      )),
    );
  }
}


class MyCustomPageView extends StatefulWidget {
  const MyCustomPageView({super.key});

  @override
  State<MyCustomPageView> createState() => _MyCustomPageViewState();
}

class _MyCustomPageViewState extends State<MyCustomPageView> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
   pageController = PageController();

   pageController.addListener((){
     currentPageIndex = pageController.page!.round();
     setState(() {

     });
   });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My card",style: AppStyles.styleSemiBold20(context),),
            SizedBox(
              height: 12,
            ),
            MyCardsPageView(
              pageController: pageController,
            ),
            SizedBox(
              height: 6,
            ),
            DotsIndicator(
              currentIndex: currentPageIndex,
            ),
          ],
        ),
      ),
    );
  }
}
