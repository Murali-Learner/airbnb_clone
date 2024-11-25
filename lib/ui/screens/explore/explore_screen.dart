import 'package:airbnb_clone/ui/screens/explore/widgets/bottom_nav_bar.dart';
import 'package:airbnb_clone/ui/screens/explore/widgets/destination_card_widget.dart';
import 'package:airbnb_clone/ui/screens/explore/widgets/search_field.dart';
import 'package:airbnb_clone/ui/screens/explore/widgets/tabs_widget.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SearchField(),
            Expanded(child: Tabs()),
            Expanded(flex: 7, child: DestinationsWidget()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
