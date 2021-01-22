import 'package:flutter/material.dart';
import 'package:flutter_web_folo/src/interface/main%20view/main_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
