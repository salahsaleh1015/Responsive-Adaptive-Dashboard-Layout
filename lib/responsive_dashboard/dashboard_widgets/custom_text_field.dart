



import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/app_styles.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
 final String hint;
  @override
  Widget build(BuildContext context) {
    return  TextField(

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context),
        fillColor: Color(0xfffafafa),
        filled: true,
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder()
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(

          color: Colors.transparent
        ),
        borderRadius: BorderRadius.circular(12)
      );
  }
}
