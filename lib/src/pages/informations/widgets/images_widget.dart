import 'package:flutter/material.dart';
import 'package:pet_adoption_app/src/pages/home/widgets/image_widget.dart';
import 'package:pet_adoption_app/src/shared/models/card_information_model.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final CardInformationModel cardInformationModel =
        ModalRoute.of(context)!.settings.arguments as CardInformationModel;

    final String _link = cardInformationModel.imageLink;
    final List _images = cardInformationModel.images;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: size.height * 0.38,
          width: size.width * 0.18,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _images.length,
            itemBuilder: (context, index) {
              final link = _images[index];
              return ImageWidget(
                linkImage: link,
              );
            },
          ),
        ),
        Image.network(
          _link,
          scale: 4.5,
        )
      ],
    );
  }
}
