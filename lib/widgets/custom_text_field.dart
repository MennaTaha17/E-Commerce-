import 'package:flutter/material.dart';

import '../common/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.text,
    required this.title,
    this.iconPassword,
    super.key,
  });
  final String text;
  final String title;
  final IconData? iconPassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            cursorColor: AppColors.blue,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              hintText: text,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              suffixIcon:
                  iconPassword != null
                      ? Icon(iconPassword, color: Colors.grey)
                      : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
