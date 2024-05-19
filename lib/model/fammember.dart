class FamMember {
  final int id;
  final String name;
  final String relation;
  final String age;
  final String nationalId;
  final bool deleted;
  final String datetimeCreated;
  final int user;

  FamMember({
    required this.id,
    required this.name,
    required this.relation,
    required this.age,
    required this.nationalId,
    required this.deleted,
    required this.datetimeCreated,
    required this.user,
  });

  factory FamMember.fromJson(Map<String, dynamic> json) => FamMember(
        id: json["id"],
        name: json["name"],
        relation: json["relation"],
        age: json["age"],
        nationalId: json["national_id"],
        deleted: json["deleted"],
        datetimeCreated: json["datetime_created"],
        user: json["user"],
      );
}
