class UserDetailsModel {
  String name;
  String date;
  int averageDay;

  UserDetailsModel({
    required this.name,
    required this.date,
    required this.averageDay,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = {
      'name': name,
      'date': date,
      'average_day': averageDay,
    };
    return data;
  }
}
