import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/Favorites.dart';
import '../utils/Colors.dart';
import '../widget/Bottombar_Widget.dart';
import 'Drawer.dart';
import 'HomePage.dart';

class forgot extends StatelessWidget {
  const forgot({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Text(
                            'E-posta Adresiniz',
                            style: TextStyle(
                              color: AColors.title2,
                              fontFamily: 'AvenirW',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 15),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            style: flatButtonStyle,
                            child: Text('Gönder',
                                style: TextStyle(color: AColors.mainpage)),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    // ... rest of your code
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerMenu(), // Add this line to set the drawer
      bottomNavigationBar: BottombarWidget(),
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
