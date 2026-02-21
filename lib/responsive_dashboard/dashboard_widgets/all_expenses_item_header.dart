import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xfffafafa),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        Expanded(child: SizedBox()),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
