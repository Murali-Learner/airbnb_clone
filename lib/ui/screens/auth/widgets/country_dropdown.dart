import 'package:airbnb_clone/models/country_model.dart';
import 'package:airbnb_clone/providers/auth_provider.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/context_extension.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  CountryDropdownState createState() => CountryDropdownState();
}

class CountryDropdownState extends State<CountryDropdown> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Container(
      height: context.height(7.4),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: authProvider.isDropdownFocused
              ? ColorConstants.blackColor
              : Colors.transparent,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          5.vSpace,
          GestureDetector(
            onTap: () {
              authProvider.focusDropdown();
            },
            child: Text(
              "Country/Region",
              style: TextStyle(
                fontSize: 12.0,
                color: ColorConstants.greyColor,
              ),
            ),
          ),
          SizedBox(
            height: context.height(3.5),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Country>(
                alignment: Alignment.center,
                // focusColor: Colors.black,
                padding: EdgeInsets.zero,
                value: authProvider.countries.firstWhere(
                  (country) =>
                      country.name == authProvider.selectedCountry.name,
                ),
                isExpanded: true,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.blackColor,
                  fontSize: 15,
                ),
                borderRadius: BorderRadius.circular(8.0),
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                items: authProvider.countries.map((country) {
                  return DropdownMenuItem<Country>(
                    value: country,
                    child: Text(
                      "${country.name} (${country.code})",
                      style: const TextStyle(fontSize: 15.0),
                    ),
                  );
                }).toList(),
                onTap: () => authProvider.setDropdownFocus(),
                onChanged: (value) {
                  authProvider.changeCountry(value!);
                  // authProvider.focusDropdown();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
