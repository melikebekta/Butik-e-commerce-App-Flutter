import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../Utils/Colors.dart';
import '../Widget/Bottombar_Widget.dart';
import '../Widget/Connection_Widget.dart';
import 'Drawer.dart';
import 'Favorites.dart';
import 'HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectionScreen extends StatefulWidget {
  const ConnectionScreen({super.key});

  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends State<ConnectionScreen> {

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
      body: ConnectionWidget(),
      bottomNavigationBar: BottombarWidget(),
      drawer: DrawerMenu(),

    );
  }
}
