import 'package:airbnb_clone/providers/auth_provider.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/country_dropdown.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:airbnb_clone/utils/globals/global_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhoneNumberAuthWidget extends StatelessWidget {
  const PhoneNumberAuthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AuthProvider>();
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.unSelectedBorderColor,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CountryDropdown(),
          provider.showDivider
              ? const Divider(
                  height: 4.0,
                )
              : const SizedBox(
                  height: 4.0,
                ),
          AuthFormField(
            controller: provider.mobileController,
            hintText: "Phone Number",
            keyboardType: TextInputType.phone,
          ),
          provider.mobileNumberError.isNotEmpty
              ? ErrorWidget(error: provider.mobileNumberError)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Icon(
            Icons.info,
            color: ColorConstants.redColor,
            size: 15,
          ),
          2.hSpace,
          Text(
            error,
            style: TextStyle(
              color: ColorConstants.redColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
