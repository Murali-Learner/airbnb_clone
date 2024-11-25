import 'package:airbnb_clone/providers/auth_provider.dart';
import 'package:airbnb_clone/ui/screens/auth/otp_screen.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/dividers_with_text.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/phone_auth_widget.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/privacy_policy_widget.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/social_auth_button.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/context_extension.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:airbnb_clone/utils/globals/global_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthWidgets extends StatelessWidget {
  const AuthWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          30.vSpace,
          const Text(
            "Welcome to Airbnb",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          20.vSpace,
          const PhoneNumberAuthWidget(),
          // 8.vSpace,
          const PrivacyPolicyWidget(),
          20.vSpace,
          Consumer<AuthProvider>(builder: (context, provider, _) {
            return GlobalButton(
              text: "Continue",
              onPressed: () {
                if (provider.mobileController.text.isNotEmpty) {
                  context.push(navigateTo: const OtpScreen());
                } else {
                  provider.setMobileError();
                }
              },
            );
          }),
          20.vSpace,
          const DividerWithText(text: "or"),
          10.vSpace,
          SocialAuthButton(
            text: "Google",
            svgAsset: "assets/images/google.svg",
            onPressed: () {},
          ),
          10.vSpace,
          SocialAuthButton(
            text: "Facebook",
            svgAsset: "assets/images/facebook.svg",
            onPressed: () {},
          ),
          10.vSpace,
          SocialAuthButton(
            text: "Apple",
            svgAsset: "assets/images/apple.svg",
            onPressed: () {},
          ),
          10.vSpace,
          SocialAuthButton(
            text: "Mail",
            svgAsset: "assets/images/mail.svg",
            onPressed: () {},
          ),
          30.vSpace,
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Need Help?",
                style: TextStyle(
                  color: ColorConstants.blackColor,
                  decoration: TextDecoration.underline,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
