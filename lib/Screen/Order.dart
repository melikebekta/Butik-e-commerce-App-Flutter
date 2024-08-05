import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/Favorites.dart';
import 'package:moda_gulay_butik/Screen/HomePage.dart';
import 'package:moda_gulay_butik/Screen/shop.dart';
import '../Utils/Colors.dart';
import '../Widget/Bottombar_Widget.dart';
import '../Widget/Cart_Widget.dart';
import 'Drawer.dart';

/*
class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // ... (diğer AppBar ayarları)
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartScreen(
              productname: 'Kapşonlu Çıtçıtlı Şişme Yelek Siyah',
              pricee: 500,
              cart: '',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottombarWidget(),
      drawer: DrawerMenu(),
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          // ALIŞVERİŞE DEVAM ET butonu
          Positioned(
            bottom: 120.0,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // ALIŞVERİŞE DEVAM ET butonu tıklandığında yapılacak işlemleri ekleyin
                  print('ALIŞVERİŞE DEVAM ET Butona Tıklandı');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Shop(),
                    ),
                  );
                },
                label: Text('ALIŞVERİŞE DEVAM ET'),
                icon: Icon(Icons.shopping_cart),
                backgroundColor: AColors.title2,
              ),
            ),
          ),
          // Ödeme Yap butonu
          Positioned(
            bottom: 60.0,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Ödeme Yap butonu tıklandığında yapılacak işlemleri ekleyin
                  print('Ödeme Yap Butona Tıklandı');
                  // Ödeme yap işlevini buraya ekleyin
                },
                label: Text('ÖDEME YAP'),
                icon: Icon(Icons.payment),
                backgroundColor: AColors.border,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
*/
/*
class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ... (diğer AppBar ayarları)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartScreen(
              productname: 'Kapşonlu Çıtçıtlı Şişme Yelek Siyah',
              pricee: 500,
              cart: '',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottombarWidget(),
      drawer: DrawerMenu(),
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          // ALIŞVERİŞE DEVAM ET butonu
          Positioned(
            bottom: 120.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // ALIŞVERİŞE DEVAM ET butonu tıklandığında yapılacak işlemleri ekleyin
                  print('ALIŞVERİŞE DEVAM ET Butona Tıklandı');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Shop(),
                    ),
                  );
                },
                label: Text('ALIŞVERİŞE DEVAM ET'),
                icon: Icon(Icons.shopping_cart),
                backgroundColor: AColors.title2,
              ),
            ),
          ),
          // Ödeme Yap butonu
          Positioned(
            bottom: 60.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Ödeme Yap butonu tıklandığında yapılacak işlemleri ekleyin
                  print('Ödeme Yap Butona Tıklandı');
                  // Ödeme yap işlevini buraya ekleyin
                },
                label: Text('ÖDEME YAP'),
                icon: Icon(Icons.payment),
                backgroundColor: AColors.border,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

*/



class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<CartItem> cartItems = [
    CartItem(productname: 'Ürün 1', pricee: 500, cart: ''),
   // CartItem(productname: 'Ürün 2', pricee: 150, cart: ''),
    //CartItem(productname: 'Ürün 3', pricee: 150, cart: ''),
    // Diğer ürünleri ekleyin
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
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return CartScreen(
            cartItem: cartItems[index],
          );
        },
      ),
      bottomNavigationBar: BottombarWidget(),
      drawer: DrawerMenu(),
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          // ALIŞVERİŞE DEVAM ET butonu
          Positioned(
            bottom: 120.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // ALIŞVERİŞE DEVAM ET butonu tıklandığında yapılacak işlemleri ekleyin
                  print('ALIŞVERİŞE DEVAM ET Butona Tıklandı');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Shop(),
                    ),
                  );
                },
                label: Text('ALIŞVERİŞE DEVAM ET'),
                icon: Icon(Icons.shopping_cart),
                backgroundColor: AColors.title2,
              ),
            ),
          ),
          // Ödeme Yap butonu
          Positioned(
            bottom: 60.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Ödeme Yap butonu tıklandığında yapılacak işlemleri ekleyin
                  print('Ödeme Yap Butona Tıklandı');
                  // Ödeme yap işlevini buraya ekleyin
                },
                label: Text('ÖDEME YAP'),
                icon: Icon(Icons.payment),
                backgroundColor: AColors.icon,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
