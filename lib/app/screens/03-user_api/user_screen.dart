import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_controller.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        init: UserController(),
        builder: (_) {
          print("User header");
          return Scaffold(
            appBar: AppBar(
              title: const Text('Users'),
              actions: [
                GetBuilder<UserController>(
                  id: 'counter',
                  builder: (_) {
                    return CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.white,
                      child: Text('${_.counter}'),
                    );
                  },
                ),
                const SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            body: GetBuilder<UserController>(
                id: 'users',
                builder: (_) {
                  print("User ListView");
                  return ListView.builder(
                      itemCount: _.users.length,
                      itemBuilder: (context, index) {
                        final user = _.users[index];
                        return ListTile(
                          title: Text("${user.firstName} - ${user.lastName}"),
                          subtitle: Text("${user.email}"),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("${user.avatar}"),
                          ),
                          trailing: GetBuilder<UserController>(
                            id: 'favorite',
                            builder: (_) {
                              print("User update Favorite");
                              return GestureDetector(
                                child: user.favorite
                                    ? const Icon(Icons.favorite,
                                        color: Colors.pink)
                                    : const Icon(Icons.favorite_outline),
                                onTap: () => _.onFavorite(user),
                              );
                            },
                          ),
                          onTap: () => _.goProfile(user),
                        );
                      });
                }),
          );
        });
  }
}
