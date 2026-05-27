import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.onPressed,
  });

  final String image, title, subTitle, buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Center(
            child: Column(
              spacing: TSizes.spaceBtwSections,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // image
                Image(
                  width: THelperFunctions.screenWidth() * .6,
                  image: AssetImage(image),
                ),

                // title & subtitle
                Text(title, style: Theme.of(context).textTheme.headlineMedium),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                // button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => onPressed(),
                    child: Text(buttonText),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
