import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_to_day/src/core/extentions/padding_extention.dart';
import 'package:weather_to_day/src/ui/home/widgets/temperature_widget/temperature_widget.dart';
import 'package:weather_to_day/src/ui/home/widgets/temperature_widget/top_widget_image.dart';
import 'package:weather_to_day/src/ui/home/widgets/timed_temperature_widget.dart';

import '../../core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(children: [
            const TopWidgetImage(),
            Positioned(
              top: 180.h,
                child: SvgPicture.asset('assets/svgs/cloudes.svg')),
            const Positioned(
                right: 15,
                top: 80,
                child: TemperatureWidget()
            ),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Low of 23 degrees, very clear skies.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.start,
                ).paddingSymmetric(horizontal: 20.h),
              const Divider(
                color: AppColors.grey,
              ).paddingSymmetric(horizontal: 20.h),
              SizedBox(
                height: 70.h,
                width: 1.sw,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return const TimedTemperatureWidget();
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
