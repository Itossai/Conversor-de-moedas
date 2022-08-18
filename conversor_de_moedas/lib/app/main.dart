import 'package:conversor_de_moedas/views/homeview.dart';
import "package:flutter/material.dart";

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.light(), home: Homeview());
  }
}
