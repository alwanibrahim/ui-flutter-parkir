import 'package:flutter/material.dart';
import 'package:ft_apk_parkir/main_layouts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainLayouts() ,
    );
  }
}
