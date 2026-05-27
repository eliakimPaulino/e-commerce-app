import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: TSizes.spaceBtwItems,
        children: [
          Row(
            spacing: TSizes.spaceBtwItems,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text(TTexts.firstName),
                    prefixIcon: Icon(Icons.person_outline_rounded),
                  ),
                ),
              ),

              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text(TTexts.lastName),
                    prefixIcon: Icon(Icons.person_outline_rounded),
                  ),
                ),
              ),
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.username),
              prefixIcon: Icon(Icons.person_outline_rounded),
            ),
          ),

          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.email),
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.phoneNo),
              prefixIcon: Icon(Icons.phone_callback_rounded),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.password),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
          ),

          // terms & conditions checkbox
          TermsAndConditions(),

          // signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmail()),
              child: const Text(TTexts.signIn),
            ),
          ),
        ],
      ),
    );
  }
}
