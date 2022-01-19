import 'package:app_getx_flutterg57/app/models/user_model.dart';
import 'package:app_getx_flutterg57/app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _userProvider = UserProvider();
  List<UserModel> users = [];
  int counter = 0;

  @override
  void onInit() {
    print("user onInit");
    _loadUsers();
    super.onInit();
  }

  @override
  void onReady() {
    print("user onReady");
    super.onReady();
  }

  @override
  void onClose() {
    print("user onClose");
    super.onClose();
  }

  _loadUsers() async {
    try {
      users = await _userProvider.getUsers();
      update(["users"]);
    } catch (e) {
      print("LoadUser $e");
      Get.snackbar(
        "Error message",
        "Error al consumir API",
        icon: const Icon(Icons.error),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }

  onFavorite(UserModel user) async {
    try {
      user.favorite = !user.favorite;
      counter = users.where((u) => u.favorite).length;
      update(["favorite", "counter"]);
    } catch (e) {
      print("LoadUser $e");
      Get.snackbar(
        "Error message",
        "Error al consumir API",
        icon: const Icon(Icons.error),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
      );
    }
  }

  goProfile(UserModel user) {
    Get.toNamed("/profile", arguments: user);
  }
}
