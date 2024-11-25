import 'package:airbnb_clone/providers/auth_provider.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/appbar_widget.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/otp_help_widget.dart';
import 'package:airbnb_clone/ui/screens/explore/explore_screen.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/context_extension.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:airbnb_clone/utils/globals/global_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  OtpScreenState createState() => OtpScreenState();
}

class OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AuthProvider>();
    return Scaffold(
      body: Column(
        children: [
          const AppbarWidget(
            title: "Confirm your number",
            showBackButton: true,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter the code we've sent via SMS to ${provider.selectedCountry.code} ${provider.mobileController.text}:",
                    style: TextStyle(
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w400,
                      letterSpacing: Constants.globalLetterSpacing,
                    ),
                  ),
                  25.vSpace,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        // height: 80,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: ColorConstants.unSelectedBorderColor,
                              width: 1.0,
                            )),
                        child: VerificationCodeField(
                          length: 5,
                          onFilled: (value) {
                            provider.setOtpValue(value);
                          },
                          size: const Size(30, 40),
                          spaceBetween: 16,
                          matchingPattern: RegExp(r'^\d+$'),
                        ),
                      ),
                    ],
                  ),
                  25.vSpace,
                  const OtpHelpWidget(),
                  80.vSpace,
                  GlobalButton(
                    text: "Continue",
                    onPressed: () {
                      if (provider.otpValue.isEmpty) {
                        provider.setMobileError();
                      } else {
                        context.push(navigateTo: const Explore());
                      }
                    },
                    color: provider.otpValue.isEmpty
                        ? ColorConstants.greyColor
                        : ColorConstants.globalButtonColor,
                  ),
                  100.vSpace,
                  Center(
                    child: Text(
                      "Need Help?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: "AirbnbCereal",
                        color: ColorConstants.blackColor,
                        fontWeight: FontWeight.w500,
                        letterSpacing: Constants.globalLetterSpacing,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
