import 'package:configuracion1/src/empresa.dart';
import 'package:configuracion1/src/personal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'personal',
      color: Colors.blue,
      routes: {
        'personal': (context) => Personal(),
        'empresa': (context) => Empresa(),
      },
    );
  }
}
