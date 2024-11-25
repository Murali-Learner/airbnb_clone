import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialAuthButton extends StatelessWidget {
  final String text;
  final String svgAsset;
  final VoidCallback onPressed;

  const SocialAuthButton({
    super.key,
    required this.text,
    required this.svgAsset,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: ColorConstants.blackColor,
            width: 0.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              svgAsset,
              height: 20.0,
              width: 20.0,
            ),
            const Spacer(),
            Text(
              "Continue With $text",
              style: TextStyle(
                color: ColorConstants.blackColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
