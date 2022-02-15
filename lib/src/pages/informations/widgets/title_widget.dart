import 'package:flutter/material.dart';

import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.name,
    required this.model,
    required this.brand,
    required this.km,
  }) : super(key: key);

  final String name;
  final String model;
  final String brand;
  final String km;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headline6,
            ),
            const Icon(
              Icons.phone_android,
              color: AppColors.subtitleColor,
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              model,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              brand,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: AppColors.buttonColor,
              size: 24,
            ),
            Text(
              '$km kms away',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ],
    );
  }
}
