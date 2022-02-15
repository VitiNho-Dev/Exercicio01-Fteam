import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    Key? key,
    required this.size,
    required String information,
  })  : _information = information,
        super(key: key);

  final Size size;
  final String _information;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sobre',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 8),
          Text(
            _information,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
