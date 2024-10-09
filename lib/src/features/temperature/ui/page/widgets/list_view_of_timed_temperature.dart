import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_to_day/src/features/temperature/ui/page/widgets/timed_temperature_widget.dart';

class ListViewOfTimedTemperature extends StatelessWidget {
  const ListViewOfTimedTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 1.sw,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const TimedTemperatureWidget();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        }
      ),
    );
  }
}
