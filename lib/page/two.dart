import 'package:flutter/material.dart';
import 'package:navegacion_basica/page/one.dart';
import 'package:navegacion_basica/page/two.dart';
import 'package:navegacion_basica/page/three.dart';
import 'package:navegacion_basica/page/four.dart';
import 'package:navegacion_basica/widgets/botones.dart';

class Two extends StatelessWidget {
  static final String ROUTE = '/two';

  @override
  Widget build(BuildContext context) {
    String texto = ModalRoute.of(context)!.settings.arguments as String;

    return BotonesNav(texto: texto,);
  }
}
