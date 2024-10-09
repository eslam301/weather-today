import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_to_day/src/features/temperature/ui/page/widgets/temperature_widget/temperature_widget.dart';

class TopWidgetSVG extends StatelessWidget {
  const TopWidgetSVG({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 452.h,
      width: 1.sw,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.03.h, 0.03.h, 0.6.h, 1.0.h],
            colors: const [
              Colors.transparent,
              Color(0xffC7E3FF),
              Color(0xff81A1DB),
              Color(0xff3469c9),
            ],
          )),
      child: Stack(
        children: [
          Positioned(
            top: 110.h,
            right:20.h,
              child: const TemperatureWidget()),
          Positioned(
              left: 22.w,
              top: 67.h,
              child: Container(
            width: 138,
            height: 138,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffFFD88B),
                  Color(0xffFFA900),
                ],
              )
            ),
          )),
          Positioned(
            bottom: 0.h,
            left: 0.h,
            right: 0.h,
            child: SvgPicture.asset(
              'assets/svgs/city_layout.svg',
              fit: BoxFit.cover,
              width: 1.1.sw,
            )),
          Positioned(
            top: 200.h,
            left: 0.h,
            right: 0.h,
            child: SvgPicture.asset(
              'assets/svgs/clouds.svg',
              fit: BoxFit.cover,
              width: 1.sw,
            ))
        ],
      ),
    );
  }
}
