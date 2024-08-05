import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/ControlScreen.dart';
import 'package:moda_gulay_butik/Screen/LogIn.dart';
import 'package:moda_gulay_butik/Screen/shop.dart';
import '../utils/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ControlScreen())));

    /*ProductDetailPage(
                      'a',
                      productName: 'Kapşonlu Çıtçıtlı Şişme \nYelek Siyah',
                      saleprice: 700,
                      price: 350,
                      productcode: 'SDM45K56655_094',
                      brand: 'Moda Gülay',
                    ))));*/

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: AColors.splashcolor),
        child: Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/logo.jpg"),
          ),
        )),
      ),
    );
  }
}
