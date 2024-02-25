class Project {
  String? createdAt;
  String? title;
  String? description;
  String? quote;
  String? startDate;
  String? endDate;
  String? clientName;
  String? id;

  Project({
    this.createdAt,
    this.title,
    this.description,
    this.quote,
    this.startDate,
    this.endDate,
    this.clientName,
    this.id,
  });

  Project.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    title = json['title'];
    description = json['description'];
    quote = json['quote'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    clientName = json['clientName'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['title'] = this.title;
    data['description'] = this.description;
    data['quote'] = this.quote;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['clientName'] = this.clientName;
    data['id'] = this.id;
    return data;
  }
}
