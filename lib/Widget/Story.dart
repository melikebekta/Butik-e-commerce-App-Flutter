import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/shop.dart';

class StoryWidget extends StatelessWidget {
  List<dynamic> story = [
    'assets/image/sanaozel.png',
    'assets/image/coksatan.png',
    'assets/image/ceketst.png',
    'assets/image/elbisest.png',
    'assets/image/etekst.png',
    'assets/image/gomlekst.png',
    'assets/image/hirkast.png',
    'assets/image/kabanst.png',
    'assets/image/kapst.png',
    'assets/image/kazakst.png',
    'assets/image/montst.png',
    'assets/image/pantolonst.png',
    'assets/image/sweatst.png',
    'assets/image/sismeyelekst.png',
    'assets/image/takimst.png',
    'assets/image/trenckotst.png',
    'assets/image/thirkast.png',
    'assets/image/ttunikst.png',
    'assets/image/tunikst.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(story.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      // Story öğesine tıklandığında yapılacak işlemler
                      _onStoryTap(context, index);
                    },
                    child: Container(
                      width: 67,
                      height: 67,
                      padding: const EdgeInsets.all(0.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF944497),
                                Color(0XFFDD4A85),
                                Color(0XFFFCC30B)
                              ])), //Color(0xFF9B2282),Color(0XFFEEA863)
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('${story[index]}'))),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  void _onStoryTap(BuildContext context, int index) {
    // Story öğesine tıklandığında yapılacak işlemler
    // Örneğin başka bir sayfaya yönlendirme yapabilirsiniz
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Shop(),
      ),
    );
  }
}
/*
class StoryDetailPage extends StatelessWidget {
  final String imagePath;

  const StoryDetailPage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Story Detay Sayfası'),
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
