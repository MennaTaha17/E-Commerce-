import 'package:e_commerce/widgets/custom_elevated_button.dart';
import 'package:e_commerce/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../common/app_colors.dart';
import '../../gen/assets.gen.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = "signUpScreen";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Assets.images.pngIm.routeLo.image(),
              CustomTextField(text: "enter your full name", title: "Full Name"),
              CustomTextField(
                text: "enter your mobile no.",
                title: "Mobile Number",
              ),
              CustomTextField(
                text: "enter your email address",
                title: "E-mail address",
              ),
              CustomTextField(
                text: "enter your password",
                title: "Password",
                iconPassword: Icons.visibility_off_outlined,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: CustomElevatedButton(textButton: "Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
