import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title & subtitle
              Column(
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
              ),

              // form
              Form(
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: TTexts.email,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        labelText: TTexts.password,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(TTexts.login),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(TTexts.createAccount),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    Row(
                      spacing: TSizes.spaceBtwItems,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text(TTexts.rememberMe),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(TTexts.forgetPassword),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              ),

              // divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.softGrey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(TTexts.orSignUpWith),
                  ),
                  Expanded(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.softGrey,
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),

              // footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(TImages.google),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(TImages.facebook),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
