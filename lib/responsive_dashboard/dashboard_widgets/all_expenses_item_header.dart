import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.itemHeaderBackGroundColor,
    this.iconColor,
  });

  final String image;
  final Color? itemHeaderBackGroundColor, iconColor;
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
            color: itemHeaderBackGroundColor ?? Color(0xfffafafa),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                iconColor ?? Color(0xff62bef3),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor == null ? Color(0xff3f6b84) : Colors.white,
        ),
      ],
    );
  }
}
