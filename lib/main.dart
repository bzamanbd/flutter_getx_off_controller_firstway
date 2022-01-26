import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

void main() => runApp(const MyAPP());

class MyAPP extends StatelessWidget {
  final String _title = 'GetX Controller';
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: HomeScreen(title: _title,),
    );
  }
}
