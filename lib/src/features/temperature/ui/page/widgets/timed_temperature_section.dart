import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_to_day/src/core/extentions/padding_extention.dart';

import '../../../../../core/theme/app_colors.dart';
import 'list_view_of_timed_temperature.dart';

class TimedTemperatureSection extends StatelessWidget {
  const TimedTemperatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: AppColors.grey,
        ).paddingSymmetric(horizontal: 20.h),
        const ListViewOfTimedTemperature(),
        const Divider(
          color: AppColors.grey,
        ).paddingSymmetric(horizontal: 20.h),
      ],
    );
  }
}
