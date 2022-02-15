import 'package:flutter/material.dart';
import 'package:pet_adoption_app/src/pages/informations/widgets/app_bar_information_page.dart';
import 'package:pet_adoption_app/src/pages/informations/widgets/button_widget.dart';
import 'package:pet_adoption_app/src/pages/informations/widgets/images_widget.dart';
import 'package:pet_adoption_app/src/pages/informations/widgets/information_widget.dart';
import 'package:pet_adoption_app/src/pages/informations/widgets/title_widget.dart';
import 'package:pet_adoption_app/src/shared/models/card_information_model.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardInformationModel cardInformationModel =
        ModalRoute.of(context)!.settings.arguments as CardInformationModel;

    final String _name = cardInformationModel.name;
    final String _model = cardInformationModel.model;
    final String _brand = cardInformationModel.brand;
    final String _km = cardInformationModel.km;
    final String _information = cardInformationModel.information;

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: const AppBarInformationPage(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                TitleWidget(
                  name: _name,
                  model: _model,
                  brand: _brand,
                  km: _km,
                ),
                ImagesWidget(size: size),
                const SizedBox(height: 8),
                InformationWidget(
                  size: size,
                  information: _information,
                ),
              ],
            ),
          ),
          ButtonWidget(size: size),
        ],
      ),
    );
  }
}
