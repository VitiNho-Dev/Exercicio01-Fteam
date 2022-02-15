import 'package:flutter/material.dart';
import 'package:pet_adoption_app/src/pages/home/home_page.dart';
import 'package:pet_adoption_app/src/pages/informations/informations_page.dart';
import 'package:pet_adoption_app/src/shared/theme/app_colors.dart';
import 'package:pet_adoption_app/src/shared/theme/app_text_style.dart';

class PetAdoption extends StatelessWidget {
  const PetAdoption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        textTheme: AppTextStyle.appTextTheme,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/info_page': (context) => const InfoPage(),
      },
      home: HomePage(),
    );
  }
}
