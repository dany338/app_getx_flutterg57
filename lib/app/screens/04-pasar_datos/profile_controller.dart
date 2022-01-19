import 'package:app_getx_flutterg57/app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  UserModel user = UserModel();
  @override
  void onInit() {
    _loadInfo();
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

  _loadInfo() {
    try {
      user = Get.arguments as UserModel;
    } catch (e) {
      Get.snackbar(
        "Error message",
        "$e",
        icon: const Icon(Icons.error),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }
}
