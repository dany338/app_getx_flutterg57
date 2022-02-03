import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    _nextPage();
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  _nextPage() {
    Future.delayed(const Duration(milliseconds: 300), () {
      Get.offAllNamed(
          "/custompainter"); // Get.to(() => ContadorScreen()); // eliminar de memoria
    });
    // print("_doContador");
    // Rx.timer(0, const Duration(seconds: 3)).listen((_) {
    //   Get.offAllNamed("/home");
    // });
  }
}
