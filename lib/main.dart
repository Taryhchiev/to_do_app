import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/home_page.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}