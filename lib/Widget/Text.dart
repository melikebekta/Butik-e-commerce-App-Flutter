import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Utils/Colors.dart';

class Baslik extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  Baslik({Key? key,
    this.color = const Color(0xFFB0B0B0),
    required this.text,
    this.size=12,
    this.height=1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'AvenirW',
          color: AColors.sale,
          fontSize: size,
          height: height,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

class Texty extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  Texty({Key? key,
    this.color = const Color(0xFF3D3D3D),
    required this.text,
    this.size=20,
    this.overflow=TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'AvenirB',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
