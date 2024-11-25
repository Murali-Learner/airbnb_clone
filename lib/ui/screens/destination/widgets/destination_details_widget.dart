import 'package:airbnb_clone/models/destination_model.dart';
import 'package:airbnb_clone/ui/screens/destination/widgets/rating_widget.dart';
import 'package:airbnb_clone/ui/screens/destination/widgets/reusable_tile.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:flutter/material.dart';

class DestinationDetails extends StatelessWidget {
  const DestinationDetails({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Text(
              destination.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            6.vSpace,
            Text(
              'Farm stay in South Africa',
              style: TextStyle(
                fontSize: 16,
                color: ColorConstants.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            3.vSpace,
            Text(
              '${2} guests . ${1} bedroom . ${1} bed . ${1} bathroom',
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.blackColor,
                fontWeight: FontWeight.w200,
              ),
            ),
            10.vSpace,
            const RatingWidget(),
            10.vSpace,
            ListTile(
              leading: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(destination.imageUrls.first),
                  ),
                  // Positioned(
                  //   bottom: -6,
                  //   right: 0,
                  //   child: Transform.rotate(
                  //     angle: 180 * math.pi / 180,
                  //     child: Icon(
                  //       Icons.person,
                  //       color: ColorConstants.redColor,
                  //     ),
                  //   ),
                  // )
                ],
              ),
              title: Text(
                "Hosted by Candise",
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'Superhost . 11 years hosting',
                style: TextStyle(
                  fontSize: 14,
                  color: ColorConstants.blackColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Divider(),
            // 10.vSpace,
            const ReusableListTile(
              title: 'Self check-in',
              subTitle: 'Check yourself in with the lockbox.',
              leading: Icons.door_sliding_outlined,
            ),
            const ReusableListTile(
              title: 'Candise is a Superhost',
              subTitle: 'Superhosts are experienced, highly rated Hosts.',
              leading: Icons.person,
            ),
            const ReusableListTile(
              title: 'Great location',
              subTitle:
                  'Guests who stayed here in the past year loved the location.',
              leading: Icons.location_on_outlined,
            ),
            const Divider(),
            15.vSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFEAE7E7),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Some info has been automatically translated.",
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "Show original",
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            20.vSpace,
            Text(
              "If views, luxury, and romantic charm are your thing, we've got you covered! Couplespod at The Riverstone House Portfolio is our high end couples retreat.",
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            20.vSpace,
            Text(
              "Guest Access...",
              style: TextStyle(
                fontSize: 14,
                color: ColorConstants.blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            15.vSpace,
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Show more",
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 15,
                    color: ColorConstants.blackColor.withOpacity(0.6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
