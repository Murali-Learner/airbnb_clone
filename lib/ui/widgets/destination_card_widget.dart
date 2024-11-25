import 'package:airbnb_clone/models/destination_model.dart';
import 'package:airbnb_clone/ui/screens/destination/destination_screen.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:airbnb_clone/utils/extensions/context_extension.dart';
import 'package:airbnb_clone/utils/extensions/spacer_extension.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DestinationCardWidget extends StatefulWidget {
  final Destination destination;
  final int index;
  const DestinationCardWidget(
      {super.key, required this.destination, required this.index});

  @override
  DestinationCardWidgetState createState() => DestinationCardWidgetState();
}

class DestinationCardWidgetState extends State<DestinationCardWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
          navigateTo: DestinationScreen(
        destination: widget.destination,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 380,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: widget.destination.imageUrls.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const Positioned(
                top: 20,
                right: 20,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    widget.destination.imageUrls.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.white38,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          12.vSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: context.width(60),
                child: Text(
                  widget.destination.name,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.destination.rating.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: Constants.globalLetterSpacing,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '${widget.destination.distance} kilometers away',
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          Text(
            widget.destination.duration,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          Row(
            children: [
              Text(
                '\$${widget.destination.price}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                ' night',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
