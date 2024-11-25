import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class OtpHelpWidget extends StatelessWidget {
  const OtpHelpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            color: ColorConstants.blackColor,
            fontFamily: "AirbnbCereal",
            fontWeight: FontWeight.w400,
            letterSpacing: Constants.globalLetterSpacing,
          ),
          text: "Haven't received code? ",
          children: [
            TextSpan(
              text: "More Options",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontFamily: "AirbnbCereal",
                color: ColorConstants.blackColor,
                fontWeight: FontWeight.w500,
                letterSpacing: Constants.globalLetterSpacing,
              ),
            ),
          ]),
    );
  }
}
