import 'package:airbnb_clone/models/destination_model.dart';
import 'package:airbnb_clone/ui/screens/destination/widgets/destination_details_widget.dart';
import 'package:airbnb_clone/ui/screens/destination/widgets/destination_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key, required this.destination});
  final Destination destination;

  @override
  DestinationScreenState createState() => DestinationScreenState();
}

class DestinationScreenState extends State<DestinationScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          DestinationHeader(destination: widget.destination),
          DestinationDetails(destination: widget.destination),
        ],
      ),
    );
  }
}
