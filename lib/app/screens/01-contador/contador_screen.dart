import 'package:app_getx_flutterg57/app/screens/01-contador/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContadorScreen extends StatelessWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>(
      init: ContadorController(),
      builder: (_) {
        print("Dibujando widgets");
        return Scaffold(
          appBar: AppBar(
            title: const Text("Contador"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                GetBuilder<ContadorController>(
                  id: "contador",
                  builder: (_) {
                    print("Update text");
                    return Text(
                      '${_.contador}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _.incrementar();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
