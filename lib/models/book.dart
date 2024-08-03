class Book {
  int? id;
  String? name;

  Book({this.id, this.name});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}
