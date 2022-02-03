import 'package:flutter/material.dart';

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HeaderDiagonal(),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      // color: Colors.red,
      child: CustomPaint(
        painter: _HeaderPico(),
      ),
    );
  }
}

class _HeaderDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Definir las propiedades del lapiz
    final lapiz = Paint()
      ..color = Colors.purple[900] ?? Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 40.0;
    // Definir mi pizarra
    final path = Path();
    // Definir el punto de inicio
    path.lineTo(0, size.height * .35);
    path.lineTo(size.width, size.height * .30);
    path.lineTo(size.width, 0);
    path.close();
    // path.quadraticBezierTo(
    //   size.width * .2,
    //   size.height * .45,
    //   size.width * .5,
    //   size.height * .5,
    // );
    // path.quadraticBezierTo(
    //   size.width * .8,
    //   size.height * .55,
    //   size.width,
    //   size.height * .35,
    // );
    // path.lineTo(size.width, 0);
    // path.close();

    // Presentar en canvas
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Colors.purple[900] ?? Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 40.0;
    // Definir mi pizarra
    final path = Path();
    // Definir el punto de inicio
    path.lineTo(0, size.height * .25);
    path.lineTo(size.width * .50, size.height * .35);
    path.lineTo(size.width, size.height * .25);
    path.lineTo(size.width, 0);
    path.close();
    // Presentar en canvas
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
