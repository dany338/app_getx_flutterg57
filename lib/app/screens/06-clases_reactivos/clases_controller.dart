import 'package:app_getx_flutterg57/app/models/rxpet_model.dart';
import 'package:get/get.dart';

class ClasesController extends GetxController {
  RxPetModel objPet = RxPetModel(
    name: 'pepe',
    age: 2,
  );

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    objPet.age++;
  }
}
