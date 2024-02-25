import 'dart:convert';

class Task {
  final String? title;
  final String? description;
  final String? dateTime;
  final bool isChecked;

  Task({
    this.title,
    this.description,
    this.dateTime,
    this.isChecked = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'dateTime': dateTime,
      'isChecked': isChecked,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      dateTime: map['dateTime'] != null ? map['dateTime'] as String : null,
      isChecked: map['isChecked'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);

  Task copyWith({
    String? title,
    String? description,
    String? dateTime,
    bool? isChecked,
  }) {
    return Task(
      title: title ?? this.title,
      description: description ?? this.description,
      dateTime: dateTime ?? this.dateTime,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
