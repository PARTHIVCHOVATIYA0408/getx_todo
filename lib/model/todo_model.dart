class TodoModel {
  final List<Data>? data;

  TodoModel({
    this.data,
    required String description,
    required String title,
  });

  TodoModel.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'data': data?.map((e) => e.toJson()).toList()};
}

class Data {
  final String? title;
  final String? description;

  Data({
    this.title,
    this.description,
  });

  Data.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String?,
        description = json['description'] as String?;

  Map<String, dynamic> toJson() => {'title': title, 'description': description};
}
