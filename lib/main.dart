import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'application.dart';

void main() {
  runApp(const WeatherToDay());
  WidgetsFlutterBinding.ensureInitialized();
  // Make the navigation and status bar transparent
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);


  // Set system overlays to be transparent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black87, // Make status bar transparent
    systemNavigationBarColor: Colors.transparent, // Make navigation bar transparent
    systemNavigationBarIconBrightness: Brightness.light, // Set icons to dark or light
    statusBarIconBrightness: Brightness.light, // Set icons to dark or light
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,  // Locks in portrait mode
    DeviceOrientation.portraitDown, // Optional: Allows upside-down portrait mode
  ]);
}
