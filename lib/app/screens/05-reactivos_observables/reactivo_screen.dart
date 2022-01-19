import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'reactivo_controller.dart';

class ReactivoScreen extends StatelessWidget {
  const ReactivoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactivoController>(
        init: ReactivoController(),
        builder: (_) {
          print("Dibujando widgets");
          return Scaffold(
            appBar: AppBar(
              title: const Text('Reactivos'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('You have pushed the button this many times:'),
                  Obx(
                    () => Text(
                      '${_.counter.value}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _.increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
