import 'package:app_getx_flutterg57/app/screens/05-reactivos_observables/user_reactivo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserReactivoScreen extends StatelessWidget {
  const UserReactivoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserReactivoController>(
      init: UserReactivoController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('user Reactivo'),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Obx(
                () => Text(
                  '${_.counter}',
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: _.users.length,
            itemBuilder: (context, index) => ListTile(
                onTap: () {},
                title: Text(
                    "${_.users[index].firstName} ${_.users[index].lastName}"),
                subtitle: Text("${_.users[index].email}"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("${_.users[index].avatar}"),
                ),
                trailing: Obx(
                  () => GestureDetector(
                    onTap: () {
                      _.onFavoriteUser(_.users[index]);
                    },
                    child: _.users[index].rxFavorite.value
                        ? const Icon(Icons.favorite, color: Colors.pink)
                        : const Icon(
                            Icons.favorite_outline, // 42:30
                          ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
