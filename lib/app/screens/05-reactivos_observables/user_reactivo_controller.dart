import 'package:app_getx_flutterg57/app/models/user_model.dart';
import 'package:app_getx_flutterg57/app/providers/user_provider.dart';
import 'package:get/get.dart';

class UserReactivoController extends GetxController {
  final _userProvider = UserProvider();
  RxList<UserModel> users = RxList<UserModel>([]);
  RxInt counter = RxInt(0);

  @override
  void onInit() {
    _loadUsers();
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

  _loadUsers() async {
    try {
      users.value = await _userProvider.getUsers();
      // update();
    } catch (e) {
      print("error: $e");
    }
  }

  onFavoriteUser(UserModel user) {
    try {
      user.rxFavorite.value = !user.rxFavorite.value;
      counter.value = users.where((user) => user.rxFavorite.value).length;
    } catch (e) {
      print("error: $e");
    }
  }
}
