// ignore_for_file: prefer_const_constructors

import 'package:finance/main/root.dart';
import 'package:finance/routers/constants.dart';
import 'package:finance/routers/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, 
      initialRoute: rootRoute, 
      onGenerateRoute: AppRouter.generateRoute, 
    );
  }
}
