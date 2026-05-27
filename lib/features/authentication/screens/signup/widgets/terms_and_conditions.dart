import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Checkbox(value: isChecked, onChanged: (value) {}),
          Text.rich(
            TextSpan(
              text: '${TTexts.iAgreeTo} ',
              children: [
                TextSpan(
                  text: '${TTexts.termsOfUse} ',
                  mouseCursor: SystemMouseCursors.click,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      debugPrint('Terms of Use clicked');
                    },
                ),
                TextSpan(text: '${TTexts.and} '),
                TextSpan(
                  text: TTexts.privacyPolicy,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      debugPrint('Privacy Policy clicked');
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
