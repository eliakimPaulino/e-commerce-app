import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: dark
              ? AssetImage(TImages.lightAppLogo)
              : AssetImage(TImages.darkAppLogo),
        ),
        const SizedBox(height: 16),
        Text(
          TTexts.loginTitle,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: dark ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          TTexts.loginSubTitle,
          style: TextStyle(
            fontSize: 16,
            color: dark ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
