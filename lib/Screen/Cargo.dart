import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/HomePage.dart';

import '../Utils/Colors.dart';
import '../Widget/Bottombar_Widget.dart';
import 'Drawer.dart';
import 'Favorites.dart';


class CargoScreen extends StatefulWidget {
  const CargoScreen({super.key});

  @override
  State<CargoScreen> createState() => _CargoScreenState();
}

class _CargoScreenState extends State<CargoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: AColors.mainpage,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to the home screen when the image is clicked
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Image.asset(
                  "assets/image/logoa.png",
                  height: 60,
                  width: 120,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
          leading: Builder(
            builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        "assets/image/dicon.png",
                        height: 20,
                        width: 20,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                    const Text(
                      "Menü",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Favorites(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/image/Arama.png',
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Favorites(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/image/Kalp.png',
                width: 30,
              ),
            ),
          ],
        ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 20,),
              Text('Sipariş Numaranız',
                style: TextStyle(
                    fontFamily: 'AvenirB',
                    fontSize: 17,
                    color: AColors.write2
                ),),
              SizedBox(height: 10,),
              TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0)
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () { },
                style: flatButtonStyle,
                child: Text('Gönder',
                    style: TextStyle(color: AColors.mainpage)),
              ),
            ],
          ),


              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottombarWidget(),
      drawer: DrawerMenu(),
    );
  }
}
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: AColors.icon,
  minimumSize: const Size(350, 60),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
  textStyle:
  const TextStyle(fontFamily: 'AvenirB', fontSize: 20, color: Colors.white),
);
