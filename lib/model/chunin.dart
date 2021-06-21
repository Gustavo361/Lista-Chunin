import 'package:proj_lista_chunin/DAO/chuninDAO.dart';

class Chunin {
  int? registration;
  String? name;
  String? village;
  int? age;
  String? clan;

  Chunin({
    this.registration,
    this.name,
    this.village,
    this.age,
    this.clan,
  });

  Map<String, dynamic> toMap() {
    return {
      'registration': this.registration,
      'name': this.name,
      'village': this.village,
      'age': this.age,
      'clan': this.clan,
    };
  }

  static Chunin toObject(Map<String, dynamic> data) {
    return Chunin(
      registration: data["registration"],
      name: data["name"],
      village: data["village"],
      age: data["age"],
      clan: data["clan"],
    );
  }
}
