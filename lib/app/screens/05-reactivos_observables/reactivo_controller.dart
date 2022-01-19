import 'package:get/get.dart';

class ReactivoController extends GetxController {
  // int counter = 0;

  // Tipos de datos de reactivosObservables
  // RxInt counter = RxInt(0);
  // RxBool isLoading = RxBool(false);
  // RxString text = RxString("");
  // RxDouble double = RxDouble(0.0);
  // RxList<String> list = RxList<String>();
  // RxMap<String, String> map = RxMap<String, String>();
  // RxSet<String> set = RxSet<String>();
  // RxStream<String> stream = RxStream<String>();
  // RxFuture<String> future = RxFuture<String>();
  // RxStreamController<String> streamController = RxStreamController<String>();
  // RxStreamSink<String> streamSink = RxStreamSink<String>();
  // RxFutureController<String> futureController = RxFutureController<String>();
  // RxFutureSink<String> futureSink = RxFutureSink<String>();
  RxInt counter = RxInt(0);

  void increment() {
    counter++;
    // update();
  }

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
    // TODO: implement onClose
    super.onClose();
  }
}
