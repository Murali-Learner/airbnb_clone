import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Material(
              elevation: 5.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(40),
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorConstants.blackColor,
                    size: 27,
                  ),
                  border: InputBorder.none,
                  hintText: 'Where to? \nAnywhere • Any week • Add guests',
                  hintMaxLines: 2,
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          10.hSpace,
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorConstants.unSelectedBorderColor,
                    width: 1.5,
                  )),
              child: const Icon(
                Icons.tune,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
