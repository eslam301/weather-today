import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/app_colors.dart';

class AverageDayTemperatureWidget extends StatelessWidget {
  const AverageDayTemperatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(children: [
      Text(
        'Today',
        style: textTheme.titleSmall?.copyWith(
          color: AppColors.black,
        ),
      ),
      const Spacer(
        flex: 3,
      ),
      Row(
        children: [
          SvgPicture.asset(
            'assets/svgs/sunny_icon.svg',
            height: 18,
            width: 18,
          ),
          SizedBox(
            width: 13.w,
          ),
          SvgPicture.asset(
            'assets/svgs/night_cloudy.svg',
            height: 18,
            width: 18,
          ),
        ],
      ),
      const Spacer(
        flex: 1,
      ),
      Row(
        children: [
          Text(
            '23°',
            style: textTheme.titleSmall?.copyWith(
              color: AppColors.black,
            ),
          ),
          SizedBox(
            width: 13.w,
          ),
          Text('23°',
              style: textTheme.titleSmall?.copyWith(
                color: AppColors.black,
              )),
        ],
      )
    ]);
  }
}
