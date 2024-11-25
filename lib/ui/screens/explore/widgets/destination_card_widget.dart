import 'package:airbnb_clone/models/destination_model.dart';
import 'package:airbnb_clone/ui/widgets/destination_card_widget.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:flutter/material.dart';

class DestinationsWidget extends StatelessWidget {
  const DestinationsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      separatorBuilder: (BuildContext context, int index) => 30.vSpace,
      shrinkWrap: true,
      itemCount: destinations.length,
      itemBuilder: (BuildContext context, int index) {
        final destination = destinations[index];
        return DestinationCardWidget(
          destination: destination,
          index: index,
        );
      },
    );
  }
}
