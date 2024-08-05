import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/Cargo.dart';
import 'package:moda_gulay_butik/Screen/Connection.dart';
import 'package:moda_gulay_butik/Screen/Order.dart';
import 'package:moda_gulay_butik/Screen/Profile.dart';
import 'package:moda_gulay_butik/Utils/Colors.dart';
import '../Screen/HomePage.dart';


class BottombarWidget extends StatefulWidget {
  const BottombarWidget({Key? key});

  @override
  State<BottombarWidget> createState() => _BottombarWidgetState();
}

class _BottombarWidgetState extends State<BottombarWidget> {
  int _selectedIndex = 0; // Seçilen indeksi takip etmek için bir değişken

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AColors.sale,
      iconSize: 20,
      currentIndex: _selectedIndex, // Seçilen indeks
      onTap: (index) {
        // BottomNavigationBarItem'a tıklandığında indeksi güncelle
        setState(() {
          _selectedIndex = index;
        });

        // Tıklanan indekse göre sayfaya yönlendirme yap
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderScreen()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CargoScreen()),
            );
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConnectionScreen()),
            );
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/home.png',
            width: 20,
          ),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/user.png',
            width: 20,
          ),
          label: 'Kullanıcı',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/order.png',
            width: 18,
          ),
          label: 'Sepet',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/truck.png',
            width: 20,
          ),
          label: 'Kargo',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/image/phone.png',
            width: 20,
          ),
          label: 'İletişim',
        ),
      ],
    );
  }
}
