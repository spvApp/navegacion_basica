import 'package:flutter/material.dart';
import 'package:navegacion_basica/page/one.dart';
import 'package:navegacion_basica/page/two.dart';
import 'package:navegacion_basica/page/three.dart';
import 'package:navegacion_basica/page/four.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas y Navegacion',
      initialRoute: One.ROUTE,
      routes: {
        One.ROUTE: (_) => One(),
        Two.ROUTE: (_) => Two(),
        Three.ROUTE: (_) => Three(),
        Four.ROUTE: (_) => Four(),
      },
    );
  }
}
