class OurClass {
  final int id;
  final String name;
  final int age;
  OurClass({this.id, this.name, this.age});
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'name': this.name,
        'age': this.age,
      };
  OurClass.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        age = json['age'];
}
