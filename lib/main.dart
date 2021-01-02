import 'package:flutter/material.dart';

import 'app/views/home_view.dart';

void main() {
  runApp(AppStarted());
}

class AppStarted extends StatelessWidget {
  const AppStarted({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
