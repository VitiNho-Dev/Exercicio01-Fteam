import 'package:flutter/material.dart';

import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.linkImage,
  }) : super(key: key);

  final String linkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.backgoundColor,
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Image.network(linkImage),
      ),
    );
  }
}
