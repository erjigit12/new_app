class Sourse {
  Sourse({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;
  factory Sourse.fromJson(Map<String, dynamic> json) {
    return Sourse(
      id: json['id'] != null ? json['id'] as String : null,
      name: json['name'] != null ? json['name'] as String : null,
    );
  }
}
