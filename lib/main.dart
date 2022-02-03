import 'package:app_getx_flutterg57/app/screens/01-contador/contador_screen.dart';
import 'package:app_getx_flutterg57/app/screens/04-pasar_datos/profile_screen.dart';
import 'package:app_getx_flutterg57/app/screens/05-reactivos_observables/reactivo_screen.dart';
import 'package:app_getx_flutterg57/app/screens/02-ciclo_de_vida/splash_screen.dart';
import 'package:app_getx_flutterg57/app/screens/03-user_api/user_screen.dart';
import 'package:app_getx_flutterg57/app/screens/05-reactivos_observables/user_reactivo_screen.dart';
import 'package:app_getx_flutterg57/app/screens/06-clases_reactivos/clases_screen.dart';
import 'package:app_getx_flutterg57/app/screens/07-socket_reactivos/socket_screen.dart';
import 'package:app_getx_flutterg57/app/screens/08-custom_paint/custom_paint_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/contador': (context) => const ContadorScreen(),
        '/user': (context) => const UserScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/reactivo': (context) => const ReactivoScreen(),
        '/userreactivo': (context) => const UserReactivoScreen(),
        '/clases': (context) => const ClasesScreen(),
        '/socket': (context) => const SocketScreen(),
        '/custompainter': (context) => const CustomPaintScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Dibujando Widgets");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
