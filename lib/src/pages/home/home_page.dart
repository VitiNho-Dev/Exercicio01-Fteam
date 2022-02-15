import 'package:flutter/material.dart';
import 'package:pet_adoption_app/src/pages/home/constants/links_images.dart';
import 'package:pet_adoption_app/src/pages/home/widgets/card_widget.dart';
import 'package:pet_adoption_app/src/pages/home/widgets/custom_app_bar.dart';
import 'package:pet_adoption_app/src/pages/home/widgets/scroll_selection.dart';
import 'package:pet_adoption_app/src/shared/models/card_information_model.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<CardInformationModel> dice = [
    CardInformationModel(
      name: kNameProdutoCelular1,
      model: kModelProdutoCelular1,
      brand: kBrandProdutoCelular1,
      km: kTempoDeUsoProdutoCelular1,
      imageLink: kImagemProdutoCelular1,
      images: kImagensDoProdutoCelular1,
      information: kInformacoesProdutoCelular1,
    ),
    CardInformationModel(
      name: kNameProdutoCelular2,
      model: kModelProdutoCelular2,
      brand: kBrandProdutoCelular2,
      km: kTempoDeUsoProdutoCelular2,
      imageLink: kImagemProdutoCelular2,
      images: kImagensDoProdutoCelular2,
      information: kInformacoesProdutoCelular2,
    ),
    CardInformationModel(
      name: kNameProdutoCelular3,
      model: kModelProdutoCelular3,
      brand: kBrandProdutoCelular3,
      km: kTempoDeUsoProdutoCelular3,
      imageLink: kImagemProdutoCelular3,
      images: kImagensDoProdutoCelular3,
      information: kInformacoesProdutoCelular3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgoundColor,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ScrollSelection(),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 18, top: 4, right: 18),
              itemCount: dice.length,
              itemBuilder: (context, index) {
                final _data = dice[index];
                return CardWidget(
                  image: _data.imageLink,
                  name: _data.name,
                  model: _data.model,
                  brand: _data.brand,
                  km: _data.km,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/info_page',
                      arguments: _data,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
