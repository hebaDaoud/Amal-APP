class RecentReceived {
  final String preiod;
  final String datetimeCreated;
  final String amountMeals;

  RecentReceived({
    required this.preiod,
    required this.datetimeCreated,
    required this.amountMeals,
  });

  factory RecentReceived.fromJson(Map<String, dynamic> json) => RecentReceived(
        preiod: json["preiod"],
        datetimeCreated: json["datetime_created"],
        amountMeals: json["amount_meals"],
      );
}
