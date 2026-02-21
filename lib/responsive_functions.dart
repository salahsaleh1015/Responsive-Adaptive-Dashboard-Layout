import 'package:flutter/material.dart';
import 'package:mastering_flutter_responsive_and_adaptive_ui_design_course/responsive_dashboard/utils/size_config.dart';

//scale factor
// responsive font size
// min,max font size

double getResponsiveFontSize(BuildContext context, {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);

  double responsiveFontSize = baseFontSize * scaleFactor;

  double lowerLimit = baseFontSize * 0.8;
  double upperLimit = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

/* <<<<<<<<<<<<<<  ✨ Windsurf Command ⭐ >>>>>>>>>>>>>>>> */
/// Returns a scale factor based on the width of the screen.
///
/// The scale factor is calculated as follows:
///
/// * If the width is less than [SizeConfig.tablet], the scale factor is the width divided by 550.
/// * If the width is greater than or equal to [SizeConfig.tablet] but less than [SizeConfig.desktop], the scale factor is the width divided by 1000.
/// * If the width is greater than or equal to [SizeConfig.desktop], the scale factor is the width divided by 1920.
///
/// @param context The [BuildContext] to use when calculating the scale factor.
///
/// @return The calculated scale factor.
/* <<<<<<<<<<  119c1085-2f9d-4e1f-9943-b37652a12d8e  >>>>>>>>>>> */
double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

// double width = MediaQuery.sizeOf(context).width;
// if (width < SizeConfig.tablet) {
//   return width / 400;
// } else if (width < 900) {
//   return width / 700;
// } else {
//   return width / 1000;
// }
