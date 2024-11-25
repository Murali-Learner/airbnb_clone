import 'package:airbnb_clone/models/destination_model.dart';
import 'package:airbnb_clone/utils/extensions/context_extension.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:flutter/material.dart';

class DestinationHeader extends StatelessWidget {
  const DestinationHeader({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: context.height(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              destination.imageUrls.first,
            ),
          ),
        ),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(
          left: 20,
          top: context.mediaQuery.padding.top,
        ),
        child: Row(
          children: [
            HeaderButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back_ios_new_outlined,
            ),
            const Spacer(),
            HeaderButtonWidget(onTap: () {}, icon: Icons.file_upload_outlined),
            10.hSpace,
            HeaderButtonWidget(onTap: () {}, icon: Icons.favorite_border),
            10.hSpace,
          ],
        ),
      ),
    );
  }
}

class HeaderButtonWidget extends StatelessWidget {
  const HeaderButtonWidget({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
