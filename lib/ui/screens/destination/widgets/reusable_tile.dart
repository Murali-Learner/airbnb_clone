import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  const ReusableListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leading,
  });
  final String title;
  final String subTitle;
  final IconData leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: ColorConstants.blackColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 14,
          color: ColorConstants.blackColor,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
