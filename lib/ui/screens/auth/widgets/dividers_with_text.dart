import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;

  const DividerWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorConstants.greyColor,
            thickness: 0.8,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorConstants.greyColor,
            thickness: 0.8,
          ),
        ),
      ],
    );
  }
}
