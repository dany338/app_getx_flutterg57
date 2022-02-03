import 'package:app_getx_flutterg57/app/screens/07-socket_reactivos/socket_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocketScreen extends StatelessWidget {
  const SocketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SocketController>(
      init: SocketController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Socket Reactivo'),
        ),
        body: Center(
          child: Obx(
            () => Text(
              _.message.value,
              style: const TextStyle(fontSize: 30, color: Colors.pink),
            ),
          ),
        ),
      ),
    );
  }
}
