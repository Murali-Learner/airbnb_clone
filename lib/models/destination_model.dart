class Destination {
  final String name;
  final String description;
  final double rating;
  final double price;
  final String duration;
  final double distance;
  final List<String> imageUrls;

  Destination({
    required this.name,
    required this.description,
    required this.rating,
    required this.price,
    required this.duration,
    required this.distance,
    required this.imageUrls,
  });
}

final List<Destination> destinations = [
  Destination(
      imageUrls: [
        'assets/images/abiansemal.webp',
        'assets/images/abiansemal.webp',
        'assets/images/abiansemal.webp',
      ],
      name: 'Abiansemal, Indodesia',
      distance: 769,
      rating: 4.87,
      price: 365,
      duration: 'Jul 2-7',
      description: ''),
  Destination(
    imageUrls: [
      'assets/images/Santorini.webp',
      'assets/images/Santorini.webp',
      'assets/images/Santorini.webp',
    ],
    name: 'Santorini, Greece',
    distance: 1169,
    rating: 4.49,
    price: 285,
    duration: 'April 20-25',
    description: '',
  ),
  Destination(
    imageUrls: [
      'assets/images/LakeArrowhead.webp',
      'assets/images/LakeArrowhead.webp',
      'assets/images/LakeArrowhead.webp',
    ],
    name: 'Lake Arrowhead, California, US',
    distance: 2029,
    rating: 4.57,
    price: 245,
    description: '',
    duration: 'Sept 2-7',
  ),
  Destination(
    imageUrls: [
      'assets/images/spain.webp',
      'assets/images/spain.webp',
      'assets/images/spain.webp',
    ],
    name: 'Tias, Spain',
    distance: 969,
    rating: 4.03,
    price: 199,
    description: '',
    duration: 'Dec 12-16',
  ),
  Destination(
    imageUrls: [
      'assets/images/Santorini.webp',
      'assets/images/Santorini.webp',
      'assets/images/Santorini.webp',
    ],
    name: 'Santorini, Greece',
    distance: 1169,
    rating: 4.49,
    price: 285,
    duration: 'April 20-25',
    description: '',
  ),
  Destination(
      imageUrls: [
        'assets/images/dubai.webp',
        'assets/images/dubai.webp',
        'assets/images/dubai.webp',
      ],
      name: 'Dubai, UAE',
      distance: 3969,
      rating: 4.90,
      price: 95,
      duration: 'Nov 1-6',
      description: ''),
];
