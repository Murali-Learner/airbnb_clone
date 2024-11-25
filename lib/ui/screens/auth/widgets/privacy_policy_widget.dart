import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            color: ColorConstants.blackColor,
            fontFamily: "AirbnbCereal",
            fontWeight: FontWeight.w300,
          ),
          text:
              "We’ll call or text you to confirm your number. Standard message and data rates apply. ",
          children: [
            TextSpan(
              text: "Privacy Policy",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontFamily: "AirbnbCereal",
                color: ColorConstants.blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
    );
  }
}
