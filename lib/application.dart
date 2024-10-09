import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_to_day/src/core/theme/application_theme.dart';
import 'package:weather_to_day/src/features/temperature/ui/page/home_screen.dart';

class WeatherToDay extends StatelessWidget {
  const WeatherToDay({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),

      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather To Day',
        theme: ApplicationTheme.lightTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
