import 'dart:async';

import 'package:faker/faker.dart';
import 'package:get/get.dart';

class SocketController extends GetxController {
  RxString message = RxString("");
  Timer? _timer;

  @override
  void onInit() {
    _loadMessage();
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

  _loadMessage() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      message.value = faker.lorem.sentence();
    });
    // Future.delayed(const Duration(seconds: 2), () {
    //   message.value = faker.lorem.sentence();
    // });
  }
}
