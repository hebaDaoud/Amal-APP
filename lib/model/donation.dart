class Donation {
  final int id;
  final String datetimeCreated;
  final String location;
  final String note;
  final String status;
  final String dateToPick;
  final String timeToPick;
  final bool isRejected;
  final String rejectionReason;
  final bool deleted;
  final int user;

  Donation({
    required this.id,
    required this.datetimeCreated,
    required this.location,
    required this.note,
    required this.status,
    required this.dateToPick,
    required this.timeToPick,
    required this.isRejected,
    required this.rejectionReason,
    required this.deleted,
    required this.user,
  });

  factory Donation.fromJson(Map<String, dynamic> json) {
    return Donation(
      id: json['id'],
      datetimeCreated: json['datetime_created'] ?? '',
      location: json['location']['Name'] ?? '',
      note: json['note'] ?? '',
      status: json['status'] ?? '',
      dateToPick: json['date_to_pick'] ?? '',
      timeToPick: json['time_to_pick'] ?? '',
      isRejected: json['is_rejected'] ?? false,
      rejectionReason: json['rejectionreason'] ?? '',
      deleted: json['deleted'] ?? false,
      user: json['user'],
    );
  }
}
