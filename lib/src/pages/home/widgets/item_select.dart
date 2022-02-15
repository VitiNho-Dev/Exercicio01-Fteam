import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pet_adoption_app/src/shared/controllers/is_value_controller.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class ItemSelect extends StatelessWidget {
  const ItemSelect({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final IsValueController _controller = IsValueController(true);

    return ValueListenableBuilder<bool>(
      valueListenable: _controller,
      builder: (context, value, child) => GestureDetector(
        onTap: _controller.isValue,
        child: Container(
          height: 20,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: value ? AppColors.primaryColor : AppColors.buttonColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: value ? AppColors.subtitleColor : AppColors.primaryColor,
              ),
              const SizedBox(width: 4),
              Text(
                title,
                style: value
                    ? Theme.of(context).textTheme.caption
                    : GoogleFonts.openSans(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
