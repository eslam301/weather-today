import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopWidgetImage extends StatelessWidget {
  const TopWidgetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.h, bottom: 0.h),
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
      child: SvgPicture.asset(
        'assets/svgs/base_eqipments.svg',
        fit: BoxFit.cover,
        width: 1.sw,
      ),
    );
  }
}
