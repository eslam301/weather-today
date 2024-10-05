import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimedTemperatureWidget extends StatelessWidget {
  const TimedTemperatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '23:00',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Icon(
            CupertinoIcons.sun_max,
            size: 24.h,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            '23°C',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]
      ),
    );
  }
}
