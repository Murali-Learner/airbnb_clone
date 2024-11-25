import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorConstants.blackColor.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "4.94",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.blackColor,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    size: 14,
                    color: ColorConstants.blackColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.local_florist_outlined, size: 16),
              const SizedBox(width: 5),
              Text(
                "Guest\nfavourite",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.blackColor,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.local_florist_outlined, size: 16),
            ],
          ),
          Container(
            height: 40,
            width: 1,
            color: ColorConstants.blackColor.withOpacity(0.3),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "120",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.blackColor,
                ),
              ),
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.blackColor,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
