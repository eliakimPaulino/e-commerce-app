import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: TSizes.spaceBtwItems,
        children: [
          const SizedBox(height: 32),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: TTexts.email,
              border: OutlineInputBorder(),
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
              labelText: TTexts.password,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(TTexts.login),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(TTexts.createAccount),
            ),
          ),
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
              TextButton(onPressed: () {}, child: Text(TTexts.forgetPassword)),
            ],
          ),
        ],
      ),
    );
  }
}
