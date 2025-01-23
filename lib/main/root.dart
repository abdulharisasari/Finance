import 'dart:async';

import 'package:finance/routers/constants.dart';
import 'package:finance/service/asset.dart';
import 'package:finance/service/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root>with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _flipAnimation;
  bool guest = false;
  
  @override
  void initState() { 
    super.initState();
    _setupFlipAnimation();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness: Brightness.dark));
    Timer(Duration(seconds: 3), () { 
      _init(); 
      });
  }

  void _setupFlipAnimation() {
    _controller = AnimationController(
      vsync: this, 
      duration: const Duration(milliseconds:1300 ),
    )..repeat(reverse: true); 

    _flipAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );
  }
  void _init() async {
    if (guest) {
    Navigator.pushNamedAndRemoveUntil(context, mainRoute,(route) => false,);
    }else{
    Navigator.pushNamedAndRemoveUntil(context, loginRoute,(route) => false,);
    }
  }

  @override
  void dispose() {
     _controller.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: height(context)* 0.3),
        child: Center(
          child: Column(
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {                  
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(_flipAnimation.value * 3.14159), // Cermin horizontal
                    child: Image.asset(
                      logoFinance, 
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              Image.asset(logoText,fit: BoxFit.fill),
            ],
          ),
        ))
    ),
  );
}
}