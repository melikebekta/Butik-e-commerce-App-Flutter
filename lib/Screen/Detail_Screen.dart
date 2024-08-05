import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/Order.dart';
import '../Utils/Colors.dart';
import '../Widget/Bottombar_Widget.dart';
import 'Drawer.dart';
import 'Favorites.dart';
import 'HomePage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailPage extends StatefulWidget {
  final String productName;
  final double price;
  final double saleprice;
  final String productcode;
  final String brand;
  ProductDetailPage(String s, {required this.productName, required this.price, required this.saleprice, required this.productcode,required this.brand});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double heightslider =MediaQuery.of(context).size.height;
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
          children: [
            SizedBox(height: 10,),
            Column(
              children: [
                Stack(
                  children: [

                    Column(
                      children: [
                        SizedBox(height: 5),
            CarouselSlider(
              options: CarouselOptions(
                height: heightslider,
                enlargeCenterPage: false,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: [
                'assets/image/card.jpg',
                'assets/image/card.jpg',
                // Diğer resimler
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: heightslider,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(i),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Resmin üzerine eklemek istediğiniz diğer widget'ları buraya ekleyin
                        Positioned(
                        top: 10,
                        right: 30,
                    child: Container(
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AColors.mainpage, // Beyaz arka plan
                    ),
                    padding: EdgeInsets.all(8),
                    child: Icon(
                    Icons.favorite_border_sharp,
                    color: AColors.write,
                    ),
                    ),
                    ),
                    Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                    child: DotsIndicator(
                    dotsCount: 2, // Dots sayısını istediğiniz sayıya ayarlayın
                    position: _currentIndex.toDouble(),
                    decorator: DotsDecorator(
                    color: AColors.dts,
                    size: const Size.square(8.0),
                  //  activeSize: const Size(20.0, 8.0),
                    activeColor: AColors.dts,
                    activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    ),
                    ),
                          ),
                          // Başka widget'lar eklemek için aynı şekilde devam edebilirsiniz
                    )
                    )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 16),
            //ürün adı
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.productName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontFamily: 'AvenirW',color: AColors.title),
                ),
              ],
            ),
            //ürün kodu ve marka yazan yer
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ürün Kodu: ',style: TextStyle(fontSize: 13,color: AColors.write, fontFamily: 'AvenirW')),
                Text(widget.productcode,
                  style: TextStyle(fontSize: 13,fontFamily: 'AvenirB', ),),
                SizedBox(width: 20,),
                Text('Marka: ',style: TextStyle(fontSize: 13,color: AColors.write, fontFamily: 'AvenirW')),
                Text(widget.brand,
                  style: TextStyle(fontSize: 13,color: AColors.write, fontFamily: 'AvenirB'),),
              ],
            ),
            SizedBox(height: 8),
            //fiyat ve yüzdelik yazan yer
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Ana eksen boyunca ortala
              children: [
                Container(
                  width: 60, // Kare buton genişliği
                  height: 50, // Kare buton yüksekliği
                  decoration: BoxDecoration(
                    color: AColors.mainpage, // Kare buton rengi
                    //borderRadius: BorderRadius.circular(10.0), // Kare buton köşe yuvarlaklığı
                    border: Border.all(color: AColors.icon, width: 1.0), // Siyah çerçeve

                  ),

                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          '%50 ', // Sayı (istenilen sayıyı ekleyin)
                          style: TextStyle(
                              color: AColors.icon, // Sayı rengi
                              fontSize: 20,
                              fontFamily: 'AvenirB'// Sayı font büyüklüğü
                          ),
                        ),
                        Text(
                          'İndirim ', // Sayı (istenilen sayıyı ekleyin)
                          style: TextStyle(
                              color: AColors.icon, // Sayı rengi
                              fontSize: 12, // Sayı font büyüklüğü
                              fontFamily: 'AvenirW'
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                SizedBox(width: 15,),


                //isim vs nerden gelecek
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.saleprice.toStringAsFixed(2)} \TL',
                      style: TextStyle(
                          fontSize: 17,
                          color: AColors.write,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AColors.write,
                          decorationThickness: 2.0,
                          fontFamily: 'AvenirW'),
                    ),
                    Text(
                      '${widget.price.toStringAsFixed(2)} \TL',
                      style: TextStyle(fontSize: 25,
                          color: AColors.icon,
                          fontFamily: 'AvenirB'
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30,),
            //Stokta var yazısı
            Container(
              width: 110, // Kare buton genişliği
              height: 40, // Kare buton yüksekliği
              decoration: BoxDecoration(
                color: AColors.mainpage, // Kare buton rengi
                borderRadius: BorderRadius.circular(3.0), // Kare buton köşe yuvarlaklığı
                border: Border.all(color: AColors.border, width: 1.5), // Siyah çerçeve
              ),
              child: Center(
                child: Text(
                  'Stokta Var', // Sayı (istenilen sayıyı ekleyin)
                  style: TextStyle(
                      color: AColors.border, // Sayı rengi
                      fontSize: 16, // Sayı font büyüklüğü
                      fontFamily: 'AvenirB'
                  ),
                ),

              ),
            ),
            SizedBox(height: 15,),
            Text('Seçim', style: TextStyle(
                color: AColors.write,
                fontFamily: 'AvenirB',
                fontSize: 15
            ),),
            SizedBox(height: 15,),
            //Bedenlerin yazdığı kutu
            GestureDetector(
              onTap: () {
                _addToCart(context);
              },

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40, // Kare buton genişliği
                    height: 40, // Kare buton yüksekliği
                    decoration: BoxDecoration(
                      color: AColors.mainpage, // Kare buton rengi
                      border: Border.all(color:AColors.border2, width: 1.5), // Siyah çerçeve

                    ),
                    child: Center(
                      child: Text(
                        '38', // Sayı (istenilen sayıyı ekleyin)
                        style: TextStyle(
                            color: AColors.write2, // Sayı rengi
                            fontSize: 16, // Sayı font büyüklüğü
                            fontFamily: 'AvenirB'
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 40, // Kare buton genişliği
                    height: 40, // Kare buton yüksekliği
                    decoration: BoxDecoration(
                      color: AColors.mainpage, // Kare buton rengi
                      border: Border.all(color:AColors.border2, width: 1.5), // Siyah çerçeve

                    ),
                    child: Center(
                      child: Text(
                        '40', // Sayı (istenilen sayıyı ekleyin)
                        style: TextStyle(
                            color: AColors.write2, // Sayı rengi
                            fontSize: 16, // Sayı font büyüklüğü
                            fontFamily: 'AvenirB'
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 40, // Kare buton genişliği
                    height: 40, // Kare buton yüksekliği
                    decoration: BoxDecoration(
                      color: AColors.mainpage, // Kare buton rengi
                      border: Border.all(color:AColors.border2, width: 1.5), // Siyah çerçeve

                    ),
                    child: Center(
                      child: Text(
                        '42', // Sayı (istenilen sayıyı ekleyin)
                        style: TextStyle(
                            color: AColors.write2, // Sayı rengi
                            fontSize: 16, // Sayı font büyüklüğü
                            fontFamily: 'AvenirB'
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 40, // Kare buton genişliği
                    height: 40, // Kare buton yüksekliği
                    decoration: BoxDecoration(
                      color: AColors.mainpage, // Kare buton rengi
                      border: Border.all(color:AColors.border2, width: 1.5), // Siyah çerçeve

                    ),
                    child: Center(
                      child: Text(
                        '44', // Sayı (istenilen sayıyı ekleyin)
                        style: TextStyle(
                            color: AColors.write2, // Sayı rengi
                            fontSize: 16, // Sayı font büyüklüğü
                            fontFamily: 'AvenirB'
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 40, // Kare buton genişliği
                    height: 40, // Kare buton yüksekliği
                    decoration: BoxDecoration(
                      color: AColors.mainpage, // Kare buton rengi
                      border: Border.all(color:AColors.border2, width: 1.5), // Siyah çerçeve

                    ),
                    child: Center(
                      child: Text(
                        '46', // Sayı (istenilen sayıyı ekleyin)
                        style: TextStyle(
                            color: AColors.write2, // Sayı rengi
                            fontSize: 16, // Sayı font büyüklüğü
                            fontFamily: 'AvenirB'
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            //Sepet Kutusu
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        _addToCart(context);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AColors.mainpage, backgroundColor: AColors.icon, // Yazı rengi
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(10.0), // Dikdörtgenin köşe yuvarlaklığı
                        ),
                      ),
                      icon: Icon(
                        Icons.shopping_cart, // Sepet ikonu (isteğe bağlı)
                      ),
                      label: Text('Sepete Ekle'), // Metin
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        if (_quantity > 1) {
                          setState(() {
                            _quantity--;
                          });
                        }
                      },
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: AColors.title2, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(1.0)),

                      ),
                      child:Text(
                        '$_quantity',
                        style: TextStyle(fontSize: 15
                            ,fontFamily: 'AvenirW',color: AColors.write),
                        textAlign: TextAlign.center,
                      ),),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          _quantity++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text('Ürün Renkleri',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'AvenirB',
                  fontSize: 15,
                  color: AColors.title
              ),),
            SizedBox(height: 20,),
            //card şeklinde diğer renkleri getireceğim yer
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildImageBox(),
                _buildImageBox(),
                _buildImageBox(),
                _buildImageBox(),
              ],
            ),
            SizedBox(height: 20,),  // Diğer elemanlar arasına bir boşluk ekleyebilirsiniz.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildImageBox(),
                _buildImageBox(),
                _buildImageBox(),
                _buildImageBox(),
              ],
            ),
            SizedBox(height: 20,),
                        //Sizin için önerilenler kısmı gibi
                        /*  CarouselSlider(
                          options: CarouselOptions(
                            height: heightslider,
                            enlargeCenterPage: false,
                            viewportFraction: 0.8, // Resimlerin genişlik oranı
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          items: [
                            'assets/image/card.jpg',
                            'assets/image/card.jpg',
                            // Diğer resimler
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: heightslider / 2,
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(i),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      // Resmin üzerine eklemek istediğiniz diğer widget'ları buraya ekleyin
                                      Positioned(
                                        top: 10,
                                        right: 30,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AColors.mainpage, // Beyaz arka plan
                                          ),
                                          padding: EdgeInsets.all(8),
                                          child: Icon(
                                            Icons.favorite_border_sharp,
                                            color: AColors.write,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 16,
                                        left: 0,
                                        right: 0,
                                        child: Center(
                                          child: DotsIndicator(
                                            dotsCount: 2,
                                            position: _currentIndex.toDouble(),
                                            decorator: DotsDecorator(
                                              color: AColors.dts,
                                              size: const Size.square(8.0),
                                              //  activeSize: const Size(20.0, 8.0),
                                              activeColor: AColors.dts,
                                              activeShape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                            ),
                                          ),
                                          // Başka widget'lar eklemek için aynı şekilde devam edebilirsiniz
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),*/
                      ],
        ),

      ],
             )
    ,

    ]
    )
      ],

    ),

      ),drawer: DrawerMenu(),
      bottomNavigationBar: BottombarWidget(),
    );
  }

  void _addToCart(BuildContext context) {

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => OrderScreen(),
      ),
    );
  }
}

Widget _buildImageBox() {
  return Container(
    margin: EdgeInsets.all(8.0),
    width: 80, // İstediğiniz genişlik
    height: 100, // İstediğiniz yükseklik
    decoration: BoxDecoration(
      color: Colors.grey, // Arka plan rengi
      border: Border.all(color: Colors.black, width: 2.0), // Çerçeve rengi ve genişliği
      borderRadius: BorderRadius.all(Radius.circular(8.0)), // Köşe yuvarlaklığı
    ),
    // İstediğiniz resmi ekleyebilirsiniz
    child: Image.asset('assets/image/card.jpg', fit: BoxFit.cover),
  );
}