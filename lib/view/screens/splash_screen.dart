import 'package:e_commerce/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = "splash_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blue,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Assets.images.pngIm.routeLo.image()
          ])
      ),
    );
  }
}
