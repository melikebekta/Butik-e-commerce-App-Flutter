import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Firebase/Register.dart';

import '../Screen/HomePage.dart';
import '../Utils/Colors.dart';




class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Username(name: 'Melike Bektaş' ,nickname: 'MB',),
        ProfileMenu(
            icon: 'assets/image/user2.png',
            text: 'Hesabım',
            press: () {  },
        ),
        ProfileMenu(
          icon: 'assets/image/adres.png',
          text: 'Adres',
          press: () {  },
        ),
        ProfileMenu(
          icon: 'assets/image/siparis.png',
          text: 'Sipariş',
          press: () {  },
        ),
        ProfileMenu(
          icon: 'assets/image/cikis.png',
          text: 'Çıkış',
          press: () { AuthService().signOut();
            Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ); },
        ),


      ],
    );
  }
}

class Username extends StatelessWidget {



  Username({
  Key? key,
  required this.name,
  required this.nickname,

}) : super(key: key);

final String name;
final String nickname;


  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AColors.box2,
                    AColors.box
                  ]
              ),
            ),
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AColors.transparant3, // Yuvarlak rengi

                    ),
                  ),
                  Text(
                    nickname,
                    style: TextStyle(
                      color: AColors.write,
                      fontSize: 25,
                      fontFamily: 'AvenirB'
                    ),
                  ),
                Positioned(
                    bottom: 0,
                    top: 150,
                    child: Text(
                      name,
                      style: TextStyle(
                        color: AColors.write3,
                        fontFamily: 'AvenirW',
                        fontSize: 15,
                ),
                ))
      ],
              ),

            ),

          )
    );

  }
}



class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: AColors.write3, backgroundColor: Color(0xFFF5F6F9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(icon, width: 27,color: AColors.icon,),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'AvenirW',
                  fontSize: 17
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
