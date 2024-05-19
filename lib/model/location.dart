class Location {
  final int id;
  final String name;
  final String street;
  final String district;
  final String long;
  final String lat;
  final String locationName;
  final String locationType;
  final String datetimeCreated;
  final bool deleted;
  final int user;

  Location({
    required this.id,
    required this.name,
    required this.street,
    required this.district,
    required this.long,
    required this.lat,
    required this.locationName,
    required this.locationType,
    required this.datetimeCreated,
    required this.deleted,
    required this.user,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'],
      name: json['Name'] ?? '',
      street: json['Street'] ?? '',
      district: json['District'] ?? '',
      long: json['Long'] ?? '',
      lat: json['Lat'] ?? '',
      locationName: json['LocationName'] ?? '',
      locationType: json['LocationType'] ?? '',
      datetimeCreated: json['datetimeCreated'] ?? '',
      deleted: json['deleted'],
      user: json['user'],
    );
  }
}
