import 'package:flutter/material.dart';
import 'package:pet_adoption_app/src/pages/home/constants/link_itens.dart';
import 'package:pet_adoption_app/src/pages/home/widgets/item_select.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class ScrollSelection extends StatelessWidget {
  ScrollSelection({
    Key? key,
  }) : super(key: key);

  final List<ItemSelect> itens = [
    const ItemSelect(
      title: kTitleConfig,
      icon: kIconFormatList,
    ),
    const ItemSelect(
      title: kTitleAndroid,
      icon: kIconAndroid,
    ),
    const ItemSelect(
      title: kTitleIos,
      icon: kIconIos,
    ),
    const ItemSelect(
      title: kTitlePhone,
      icon: kIconPhone,
    ),
    const ItemSelect(
      title: kTitleDesktopWindows,
      icon: kIoconDesktopWindows,
    ),
    const ItemSelect(
      title: kTitleDesktopMac,
      icon: kIoconDesktopMac,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.backgoundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itens.length,
          itemBuilder: (context, index) {
            final data = itens[index];
            return ItemSelect(
              title: data.title,
              icon: data.icon,
            );
          },
        ),
      ),
    );
  }
}
