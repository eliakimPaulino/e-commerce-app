import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: TSizes.spaceBtwItems,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(TImages.google, fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(TImages.facebook, fit: BoxFit.fitWidth),
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(TImages.apple, fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
