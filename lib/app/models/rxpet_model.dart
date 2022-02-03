import 'package:get/get.dart';

class RxPetModel {
  RxPetModel({
    required String name,
    required int age,
  }) {
    this.name = name;
    this.age = age;
  }

  final RxString _name = RxString("");
  set name(String value) => _name.value = value;
  String get name => _name.value;

  final RxInt _age = RxInt(0);
  set age(int value) => _age.value = value;
  int get age => _age.value;
}
