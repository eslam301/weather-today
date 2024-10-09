import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_to_day/src/core/extentions/padding_extention.dart';
import 'package:weather_to_day/src/features/temperature/ui/page/widgets/average_day_temperature_widget.dart';
import 'package:weather_to_day/src/features/temperature/ui/page/widgets/timed_temperature_section.dart';
import 'package:weather_to_day/src/features/temperature/ui/page/widgets/top_widget_svg.dart';

import '../../../../core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const TopWidgetSVG(),
          Text(
            'Low of 23 degrees, very clear skies.',
            style: textTheme.bodyLarge,
            textAlign: TextAlign.start,
          ).paddingSymmetric(horizontal: 20.h),
          const TimedTemperatureSection(),
          Column(
            children: [
              Text(
                'Tomorrow\'s temperature',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: AppColors.black),
              ),
              Text('Almost equal to today',
                  style: textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  )),
              // weeks temperature widget
              SizedBox(
                height:310.h,
                width: 1.sw,
                child: ListView.separated(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
                    itemCount: 8,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 18.h,
                      );
                    },
                    itemBuilder: (context, index) {
                      return const AverageDayTemperatureWidget();
                    },
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
