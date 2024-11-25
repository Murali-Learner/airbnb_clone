import 'package:airbnb_clone/providers/auth_provider.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const AuthFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: validator,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
      ),
      maxLength: 10,
      onTap: () {
        authProvider.focusTextField();
      },
      onTapOutside: (event) {
        authProvider.resetFocus();
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        hintText: hintText,
        counterText: '',
        focusedBorder: authProvider.isTextFieldFocused
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(
                  color: authProvider.mobileNumberError.isNotEmpty
                      ? ColorConstants.redColor
                      : ColorConstants.selectedBorderColor,
                  width: 2.0,
                ),
              )
            : InputBorder.none,
        border: authProvider.isTextFieldFocused
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(
                    color: authProvider.mobileNumberError.isNotEmpty
                        ? ColorConstants.redColor
                        : ColorConstants.selectedBorderColor,
                    width: 2.0),
              )
            : InputBorder.none,
        errorBorder: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          // vertical: 15.0,
          horizontal: 20.0,
        ),
      ),
    );
  }
}
