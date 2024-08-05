import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/shop.dart';

/*
class DrawerMenu extends StatelessWidget {
  const DrawerMenu();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "KATEGORİLER",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildExpansionTile("Üst Giyim", _buildUpperClothingSublist()),
            _buildExpansionTile("Alt Giyim", _buildBottomClothingSublist()),
            _buildExpansionTile("Dış Giyim", _buildOuterwearSublist()),
            _buildExpansionTile("Elbise", _buildDressSublist()),
            _buildExpansionTile("Takımlar", _buildSuitSublist()),
            _buildExpansionTile("Tesettür Mayo", _buildBurkiniSublist()),
            _buildExpansionTile(
                "Aksesuar & Parfüm", _buildAccessoryPerfumeSublist()),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(String title, Widget children) {
    return ExpansionTile(
      title: Text(title),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.black),
      children: [
        Container(
          height: 200.0,
          child: children,
        ),
      ],
    );
  }

  Widget _buildClothingSublist(List<String> clothingList) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          clothingList.length,
              (index) {
            return ListTile(
              title: Text(clothingList[index]),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }

  Widget _buildUpperClothingSublist() {
    List<String> upperClothingList = [
      "Tunik",
      "Hırka",
      "Gömlek",
      "Süveter",
      "Yelek",
      "Ceket",
      "T-Shirt",
      "Bluz",
      "Panço",
      "Sweat",
      "Triko Tunik",
      "Triko Kazak",
      "Body",
      "Gömlek Yakalık",
      "Hırka",
    ];

    return _buildClothingSublist(upperClothingList);
  }

  Widget _buildBottomClothingSublist() {
    List<String> bottomClothingList = [
      "Etek",
      "Pantolon",
      "Eşofman Altı",
      "Etek İçlik",
      "Triko Etek",
    ];

    return _buildClothingSublist(bottomClothingList);
  }

  Widget _buildOuterwearSublist() {
    List<String> outerwearList = [
      "Kaban",
      "Kap",
      "Trençkot",
      "Mont",
      "Kimono",
      "Yelek & Şişme Yelek",
    ];

    return _buildClothingSublist(outerwearList);
  }

  Widget _buildDressSublist() {
    List<String> dressList = [
      "Günlük Elbise",
      "Jile",
      "Salopet",
      "Tulum",
      "Abiye Elbise",
      "Namaz Elbisesi",
      "Triko Elbise",
    ];

    return _buildClothingSublist(dressList);
  }

  Widget _buildSuitSublist() {
    List<String> suitList = [
      "Pantolonlu Takım",
      "Etekli Takım",
      "Eşofman Takımı",
      "Kimonolu Takım",
      "Triko Takım",
    ];

    return _buildClothingSublist(suitList);
  }

  Widget _buildBurkiniSublist() {
    List<String> burkiniList = [
      "Tesettür Mayo",
    ];

    return _buildClothingSublist(burkiniList);
  }

  Widget _buildAccessoryPerfumeSublist() {
    List<String> accessoryPerfumeList = [
      "Bone",
      "Şal - Eşarp & Bone",
      "Parfüm",
      "Çanta & Cüzdan",
    ];

    return _buildClothingSublist(accessoryPerfumeList);
  }
}
*/
class DrawerMenu extends StatelessWidget {
  const DrawerMenu();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "KATEGORİLER",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildExpansionTile(
                "Üst Giyim", _buildUpperClothingSublist(context), context),
            _buildExpansionTile(
                "Alt Giyim", _buildBottomClothingSublist(context), context),
            _buildExpansionTile(
                "Dış Giyim", _buildOuterwearSublist(context), context),
            _buildExpansionTile("Elbise", _buildDressSublist(context), context),
            _buildExpansionTile(
                "Takımlar", _buildSuitSublist(context), context),
            _buildExpansionTile(
                "Tesettür Mayo", _buildBurkiniSublist(context), context),
            _buildExpansionTile("Aksesuar & Parfüm",
                _buildAccessoryPerfumeSublist(context), context),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(
      String title, Widget children, BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.black),
      children: [
        Container(
          height: 200.0,
          child: children,
        ),
      ],
    );
  }

  Widget _buildClothingSublist(
      List<String> clothingList, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          clothingList.length,
              (index) {
            return ListTile(
              title: Text(clothingList[index]),
              onTap: () {
                _navigateToCategoryDetailPage(clothingList[index], context);
              },
            );
          },
        ),
      ),
    );
  }

  void _navigateToCategoryDetailPage(String category, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Shop(),
      ),
    );
  }

  Widget _buildUpperClothingSublist(BuildContext context) {
    List<String> upperClothingList = [
      "Tunik",
      "Hırka",
      "Gömlek",
      "Süveter",
      "Yelek",
      "Ceket",
      "T-Shirt",
      "Bluz",
      "Panço",
      "Sweat",
      "Triko Tunik",
      "Triko Kazak",
      "Body",
      "Gömlek Yakalık",
      "Hırka",
    ];

    return _buildClothingSublist(upperClothingList, context);
  }

  Widget _buildBottomClothingSublist(BuildContext context) {
    List<String> bottomClothingList = [
      "Etek",
      "Pantolon",
      "Eşofman Altı",
      "Etek İçlik",
      "Triko Etek",
    ];

    return _buildClothingSublist(bottomClothingList, context);
  }

  Widget _buildOuterwearSublist(BuildContext context) {
    List<String> outerwearList = [
      "Kaban",
      "Kap",
      "Trençkot",
      "Mont",
      "Kimono",
      "Yelek & Şişme Yelek",
    ];

    return _buildClothingSublist(outerwearList, context);
  }

  Widget _buildDressSublist(BuildContext context) {
    List<String> dressList = [
      "Günlük Elbise",
      "Jile",
      "Salopet",
      "Tulum",
      "Abiye Elbise",
      "Namaz Elbisesi",
      "Triko Elbise",
    ];

    return _buildClothingSublist(dressList, context);
  }

  Widget _buildSuitSublist(BuildContext context) {
    List<String> suitList = [
      "Pantolonlu Takım",
      "Etekli Takım",
      "Eşofman Takımı",
      "Kimonolu Takım",
      "Triko Takım",
    ];

    return _buildClothingSublist(suitList, context);
  }

  Widget _buildBurkiniSublist(BuildContext context) {
    List<String> burkiniList = [
      "Tesettür Mayo",
    ];

    return _buildClothingSublist(burkiniList, context);
  }

  Widget _buildAccessoryPerfumeSublist(BuildContext context) {
    List<String> accessoryPerfumeList = [
      "Bone",
      "Şal - Eşarp & Bone",
      "Parfüm",
      "Çanta & Cüzdan",
    ];

    return _buildClothingSublist(accessoryPerfumeList, context);
  }
}

class CategoryDetailScreen extends StatelessWidget {
  final String category;

  CategoryDetailScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Center(
        child: Text('Bu kategori için detay sayfası'),
      ),
    );
  }
}
