import 'package:flutter/material.dart';
import 'package:navegacion_basica/page/four.dart';
import 'package:navegacion_basica/page/one.dart';
import 'package:navegacion_basica/page/three.dart';
import 'package:navegacion_basica/page/two.dart';

class BotonesNav extends StatelessWidget {
  final String texto;
  BotonesNav({required this.texto}) : super();

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      primary: Colors.blueGrey, //color de fondo
      onPrimary: Colors.white, //color de letra
      padding: EdgeInsets.symmetric(horizontal: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(texto),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              texto,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.pushNamed(context, One.ROUTE, arguments: "Uno");
              },
              child: Text("Ir a la pagina uno"),
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.pushNamed(context, Two.ROUTE, arguments: "Dos");
              },
              child: Text("Ir a la pagina dos"),
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.pushNamed(context, Three.ROUTE, arguments: "Tres");
              },
              child: Text("Ir a la pagina tres"),
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.pushNamed(context, Four.ROUTE, arguments: "Cuatro");
              },
              child: Text("Ir a la pagina cuatro"),
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                if (Navigator.canPop(context)) Navigator.pop(context);
              },
              child: Text("Volver"),
            ),
          ],
        ),
      ),
    );
  }
}
