import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/HomePage.dart';
import 'package:moda_gulay_butik/Screen/LogIn.dart';
import 'package:moda_gulay_butik/Screen/Splash.dart';

class ControlScreen extends StatelessWidget {
  ControlScreen({Key? key}) : super(key: key);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: Future.value(_auth.currentUser), // Mevcut kullanıcıyı kontrol et
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Kullanıcı oturumu açıldıysa
          if (snapshot.hasData) {
            return HomeScreen(); // HomeScreen ekranını aç
          } else {
            return LogInScreen(); // Oturum açılmadıysa LoginScreen ekranını aç
          }
        } else {
          return SplashScreen(); // Kontrol tamamlanana kadar yükleme ekranını göster
        }
      },
    );
  }
}
