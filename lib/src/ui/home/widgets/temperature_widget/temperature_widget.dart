import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              '30°C',
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Text(
                  'H:31°',
                  style:textTheme.titleLarge
                ),
                Text(
                  'L:23°',
                  style:textTheme.titleLarge,
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            Text(
              'Sakhon province, Thailand',
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
