import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/social_buttons.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import 'widgets/login_header.dart';

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
            spacing: TSizes.spaceBtwItems,
            children: [
              // logo, title & subtitle
              TLoginHeader(dark: dark),

              // form
              TLoginForm(),

              // divider
              TFormDivider(dark: dark, centralText: TTexts.orSignUpWith),

              // footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
