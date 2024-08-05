import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Firebase/Model.dart';
import 'package:moda_gulay_butik/Firebase/VeriCekme.dart';
import 'package:moda_gulay_butik/Screen/Detail_Screen.dart';
import 'package:moda_gulay_butik/Screen/HomePage.dart';
import 'package:moda_gulay_butik/Utils/Colors.dart';
import 'package:moda_gulay_butik/Widget/Text.dart';


class CardWidget extends StatelessWidget {

final String productname;
final double price;
final double saleprice;

const CardWidget({required this.productname, required this.price,required this.saleprice});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 30),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 0.65,
        ),
       // itemCount: 1, // Set the itemCount to 1
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the detail page when clicked
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailPage("s", productName: productname, price: price, saleprice: saleprice, productcode: "SOUL4Y30189_922", brand: " Moda Gülay")),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/image/card.jpg'),
                          fit: BoxFit.cover,
                        ),
                        color: AColors.icon,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(
                        Icons.favorite_border_sharp,
                        color: AColors.write,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            productname,
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '%50  ',
                                style: TextStyle(
                                  backgroundColor: Colors.black,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${saleprice.toStringAsFixed(2)} \TL',
                                    style: TextStyle(
                                      fontSize: 13,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.black,
                                      decorationThickness: 2.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '${price.toStringAsFixed(2)} \TL',
                                    style: TextStyle(fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Firebase/Model.dart';
import 'package:moda_gulay_butik/Firebase/VeriCekme.dart';
import 'package:moda_gulay_butik/Screen/Detail_Screen.dart';
import 'package:moda_gulay_butik/Utils/Colors.dart';

class CardWidget extends StatelessWidget {
  final String productname;
  final double price;
  final double saleprice;

  const CardWidget({
    required this.productname,
    required this.price,
    required this.saleprice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<ProductList>(
        future: FirebaseService().getProCol("Category"), // Replace "Category" with the actual category
        builder: (BuildContext context, AsyncSnapshot<ProductList> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            List<Product> productList = snapshot.data!.product;

            return Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 30),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 0.65,
                ),
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  Product product = productList[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            "s",
                            productName: product.pname,
                            price: product.pprice,
                            saleprice: product.psale,
                            productcode: product.pcode,
                            brand: "aaa",
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 200,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/image/card.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                color: AColors.icon,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Icons.favorite_border_sharp,
                                color: AColors.write,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    product.pname,
                                    style: TextStyle(fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '%50  ',
                                        style: TextStyle(
                                          backgroundColor: Colors.black,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${product.psale.toStringAsFixed(2)} \TL',
                                            style: TextStyle(
                                              fontSize: 13,
                                              decoration: TextDecoration.lineThrough,
                                              decorationColor: Colors.black,
                                              decorationThickness: 2.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            '${product.pprice.toStringAsFixed(2)} \TL',
                                            style: TextStyle(fontSize: 10),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
          return Container(); // Return an empty container if no data is available
        },
      ),
    );
  }
}
*/