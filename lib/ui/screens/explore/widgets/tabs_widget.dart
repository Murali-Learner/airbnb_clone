import 'package:airbnb_clone/models/tab_model.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<TabModel> tabs = [
    TabModel(text: 'Rooms', imageUrl: 'assets/images/rooms.jpeg'),
    TabModel(text: 'Pools', imageUrl: 'assets/images/pool.jpeg'),
    TabModel(text: 'Beachfront', imageUrl: 'assets/images/beachfront.jpeg'),
    TabModel(text: 'Lakes', imageUrl: 'assets/images/lakes.jpeg'),
    TabModel(text: 'Amazing views', imageUrl: 'assets/images/views.jpeg'),
    TabModel(text: 'Islands', imageUrl: 'assets/images/palm-tree.png'),
    TabModel(text: 'Caves', imageUrl: 'assets/images/cave.png'),
    TabModel(text: 'Deserts', imageUrl: 'assets/images/cactus.png'),
    TabModel(text: 'Tropical', imageUrl: 'assets/images/island.png'),
    TabModel(text: 'Creative spaces', imageUrl: 'assets/images/art.png'),
    TabModel(text: 'Mansions', imageUrl: 'assets/images/villa.png'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.zero,
      controller: _tabController,
      isScrollable: true,
      indicatorColor: ColorConstants.blackColor,
      labelColor: ColorConstants.blackColor,
      unselectedLabelColor: ColorConstants.greyColor,
      tabAlignment: TabAlignment.start,
      tabs: tabs.map((tab) {
        return Tab(
          icon: Image.asset(
            tab.imageUrl,
            height: 30,
            width: 30,
            color: _tabController.index == tabs.indexOf(tab)
                ? ColorConstants.blackColor
                : ColorConstants.greyColor,
          ),
          child: Text(
            tab.text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}
