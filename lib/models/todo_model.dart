class TodoModel {
  String? id;
  String? country;
  bool? is_done;
  String? city;
  String? account_name;

  TodoModel({
    this.id,
    this.country,
    this.is_done,
    this.city,
    this.account_name,
  });
  factory TodoModel.fromJson(Map<String, Object?> json) => TodoModel(
        id: json['id'] as String?,
        country: json['country'] as String?,
        is_done: json['is_done'] as bool?,
        city: json['city'] as String?,
        account_name: json['account_name'] as String?,
      );

  Map<String, Object?> toJson() => {
        'country': country,
        'city': city,
        'account_name': account_name,
      }; // yangi object yaratib,post qilish uchun yozilgan MAP
  @override
  String toString() =>
      "\nTodoModel(\n\t\tid: $id,\n\t\tcountry: $country, \n\t\tis_done: $is_done, \n\t\tcity: $city, \n\t\taccount_name: $account_name)";
}
