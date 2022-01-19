import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ContadorController extends GetxController {
  int _contador = 0;

  int get contador => _contador;

  void incrementar() {
    _contador++;
    update(["contador"]);
  }

  void decrementar() {
    _contador--;
    update();
  }
}
