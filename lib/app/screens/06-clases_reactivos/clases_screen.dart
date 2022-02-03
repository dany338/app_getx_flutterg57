import 'package:app_getx_flutterg57/app/screens/06-clases_reactivos/clases_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClasesScreen extends StatelessWidget {
  const ClasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClasesController>(
      init: ClasesController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Clases'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_.objPet.name),
              Obx(
                () => Text('${_.objPet.age}',
                    style: Theme.of(context).textTheme.headline4),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _.increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
