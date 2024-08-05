import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/Favorites.dart';
import 'package:moda_gulay_butik/Screen/shop.dart';
import 'package:moda_gulay_butik/Widget/Bottombar_Widget.dart';
import '../Widget/Slider.dart'; // SliderScreen'ı ekledik
import '../Widget/Story.dart';
import '../utils/Colors.dart';
import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<String> imagePaths = [
    "assets/image/hp1.jpg",
    "assets/image/hp2.jpg",
    "assets/image/hp3.jpg",
    "assets/image/hp4.jpg",
    "assets/image/hp5.jpg",
    "assets/image/hp6.jpg",
    "assets/image/hp7.jpg",
    "assets/image/hp8.jpg",
    "assets/image/hp9.jpg",
    "assets/image/hp10.jpg",
    "assets/image/hp11.jpg",
    "assets/image/hp12.jpg",
    "assets/image/hp13.jpg",
    "assets/image/hp14.jpg",
    "assets/image/hp15.jpg",
    "assets/image/hp16.jpg",
    "assets/image/hp17.jpg",
    "assets/image/hp18.jpg",
    "assets/image/hp19.jpg",
    "assets/image/hp20.jpg",
  ];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StoryWidget(),
            SliderScreen(),
        SizedBox(height: 25,),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    _onImageTap(index);
                  },
                  child: Image.asset(
                    imagePaths[index],
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 25), // 10 yüksekliğinde boşluk ekleyin
              ],
            );
          },
        )
          ],
        ),
      ),
      drawer:  DrawerMenu(),
     bottomNavigationBar: BottombarWidget(),
    );
  }

  void _onImageTap(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Shop()// DetailScreen(imagePath: imagePaths[index]),
      ),
    );
  }
}
/*
class DetailScreen extends StatelessWidget {
  final String imagePath;

  const DetailScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detay Sayfası'),
      ),
      body: Center(
        child: Image.asset(
          imagePath,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
*/