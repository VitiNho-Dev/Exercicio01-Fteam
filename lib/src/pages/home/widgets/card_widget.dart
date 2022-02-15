import 'package:flutter/material.dart';

import 'package:pet_adoption_app/src/shared/controllers/is_value_controller.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.model,
    required this.brand,
    required this.km,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String name;
  final String model;
  final String brand;
  final String km;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final IsValueController _controller = IsValueController(true);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(image),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 4),
                Text(
                  model,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  brand,
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: AppColors.buttonColor,
                      size: 18,
                    ),
                    Text(
                      '$km kms away',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: ValueListenableBuilder<bool>(
                valueListenable: _controller,
                builder: (context, value, child) => IconButton(
                  onPressed: () {
                    _controller.isValue();
                  },
                  icon: value
                      ? const Icon(
                          Icons.favorite_border,
                          color: AppColors.subtitleColor,
                        )
                      : const Icon(
                          Icons.favorite,
                          color: AppColors.buttonColor,
                        ),
                  alignment: Alignment.centerRight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
