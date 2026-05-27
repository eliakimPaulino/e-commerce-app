import 'package:e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          spacing: TSizes.spaceBtwSections,
          children: [
            //  headings
            SizedBox(
              child: Column(
                spacing: TSizes.spaceBtwItems,
                children: [
                  Text(
                    TTexts.forgetPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    TTexts.forgetPasswordSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),

            // text field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: TTexts.email,
                border: OutlineInputBorder(),
              ),
            ),

            // submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPassword()),
                child: Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
