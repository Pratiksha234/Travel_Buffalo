class Attraction {
  final String name;
  final String description;
  final String imageUrl;
  final double latitude;
  final double longitude;
  final String category;
  final String address;
  final String openingHours;
  final String contactInfo;
  final String website;
  final List<String> reviews;
  final List<Attraction> nearbyAttractions;

  Attraction({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.category,
    required this.address,
    required this.openingHours,
    required this.contactInfo,
    required this.website,
    required this.reviews,
    required this.nearbyAttractions,
  });
}
