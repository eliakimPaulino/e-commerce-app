import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark,
    required this.centralText,
  });

  final bool dark;
  final String centralText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(color: dark ? TColors.darkGrey : TColors.softGrey),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(centralText),
        ),
        Flexible(
          child: Divider(color: dark ? TColors.darkGrey : TColors.softGrey),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
