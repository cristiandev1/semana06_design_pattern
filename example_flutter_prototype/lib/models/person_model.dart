// ignore_for_file: public_member_api_docs, sort_constructors_first
class PersonModel {
  String? name;
  int? age;

  PersonModel({
    this.name,
    this.age,
  });

  //Criar copyWith depois (prototype)
  PersonModel copyWith({
    String? name,
    int? age,
  }) {
    return PersonModel(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
