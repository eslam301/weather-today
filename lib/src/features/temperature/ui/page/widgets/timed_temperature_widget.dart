import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimedTemperatureWidget extends StatelessWidget {
  const TimedTemperatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '23:00',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SvgPicture.asset(
          'assets/svgs/sunny_icon.svg',
        ),
        Text(
          '23°C',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ]
    );
  }
}
