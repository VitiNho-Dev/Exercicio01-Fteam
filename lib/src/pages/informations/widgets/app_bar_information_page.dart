import 'package:flutter/material.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class AppBarInformationPage extends StatelessWidget implements PreferredSize {
  const AppBarInformationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black54,
        ),
      ),
      actions: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.buttonColor.withOpacity(0.15)),
          child: const Icon(
            Icons.favorite,
            color: AppColors.buttonColor,
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
