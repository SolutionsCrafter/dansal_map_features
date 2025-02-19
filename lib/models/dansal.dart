// models/dansal.dart
class Dansal {
  final String id;
  final String name;
  final String address;
  final String description;
  final String imageUrl;
  final double latitude;
  final double longitude;
  final double rating;
  final String openingHours;

  Dansal({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.openingHours,
  });
}
