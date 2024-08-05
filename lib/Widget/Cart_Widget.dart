import 'package:flutter/material.dart';
import '../Utils/Colors.dart';
/*
class CartScreen extends StatefulWidget {
  final String productname;
  final double pricee;
  final String cart;

  CartScreen(
      {required this.productname, required this.pricee, required this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Dismissible(
        key: Key(widget.cart.toString()),
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AColors.slide,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [Spacer(), Icon(Icons.delete)],
          ),
        ),
        child: ListTile(
          title: Text(
            widget.productname,
            style: TextStyle(
                fontSize: 16, fontFamily: 'AvenirW', color: AColors.title),
          ),
          subtitle: Text.rich(
            TextSpan(
              text: '${widget.pricee.toStringAsFixed(2)} TL',
              style: TextStyle(
                fontSize: 13,
                color: AColors.icon,
                fontFamily: 'AvenirB',
              ),
              children: [
                TextSpan(
                  text: " x adet",
                )
              ],
            ),
          ),
          leading: SizedBox(
            width: 65,
            height: 200,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: AColors.slide,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/image/card.jpg',
                  //fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                color: AColors.transparant2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Kargo',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                            ),
                            SizedBox(width: 140),
                            Text(
                              '50.00TL',
                              textAlign: TextAlign.left, // Sola hizala
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'AvenirB',
                                color: AColors.sale,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: AColors.title2,
                                height: 36,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Toplam Tutar',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              '${widget.pricee.toStringAsFixed(2)} \TL',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AColors.sale,
                                  fontFamily: 'AvenirB'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}


//burayı ekleyemiyorum
/* Row(
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
         ),*/
*/

/*
import 'package:flutter/material.dart';

import '../Screen/shop.dart';
import '../Utils/Colors.dart';

class CartScreen extends StatefulWidget {
  final String productname;
  final double pricee;
  final String cart;

  CartScreen(
      {required this.productname, required this.pricee, required this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Dismissible(
            key: Key(widget.cart.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AColors.slide,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [Spacer(), Icon(Icons.delete)],
              ),
            ),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productname,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AvenirW',
                      color: AColors.title,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '${widget.pricee.toStringAsFixed(2)} TL',
                          style: TextStyle(
                            fontSize: 13,
                            color: AColors.icon,
                            fontFamily: 'AvenirB',
                          ),
                          children: [
                            TextSpan(
                              text: ' x $_quantity adet',
                              style: TextStyle(
                                fontSize: 13,
                                color: AColors.icon,
                                fontFamily: 'AvenirB',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            iconSize: 14,
                            onPressed: () {
                              if (_quantity > 1) {
                                setState(() {
                                  _quantity--;
                                });
                              }
                            },
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AColors.title2, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1.0)),
                            ),
                            child: Text(
                              '$_quantity',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            iconSize: 14,
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
                ],
              ),
              leading: SizedBox(
                width: 65,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AColors.slide,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/image/card.jpg',
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                color: AColors.transparant2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Kargo',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                            ),
                            SizedBox(width: 120),
                            Text(
                              '50.00TL',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'AvenirB',
                                color: AColors.sale,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: AColors.title2,
                                height: 36,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Toplam Tutar',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              '${(widget.pricee * _quantity).toStringAsFixed(2)} \TL',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AColors.sale,
                                  fontFamily: 'AvenirB'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


*/
import 'package:flutter/material.dart';
import '../Utils/Colors.dart';

class CartItem {
  final String productname;
  final double pricee;
  final String cart;

  CartItem({
    required this.productname,
    required this.pricee,
    required this.cart,
  });
}

class CartScreen extends StatefulWidget {
  final CartItem cartItem;

  CartScreen({required this.cartItem});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Dismissible(
            key: Key(widget.cartItem.cart.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AColors.slide,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [Spacer(), Icon(Icons.delete)],
              ),
            ),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cartItem.productname,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AvenirW',
                      color: AColors.title,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text:
                          '${widget.cartItem.pricee.toStringAsFixed(2)} TL',
                          style: TextStyle(
                            fontSize: 13,
                            color: AColors.icon,
                            fontFamily: 'AvenirB',
                          ),
                          children: [
                            TextSpan(
                              text: ' x $_quantity adet',
                              style: TextStyle(
                                fontSize: 13,
                                color: AColors.icon,
                                fontFamily: 'AvenirB',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            iconSize: 14,
                            onPressed: () {
                              if (_quantity > 1) {
                                setState(() {
                                  _quantity--;
                                });
                              }
                            },
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              border:
                              Border.all(color: AColors.title2, width: 2.0),
                              borderRadius:
                              BorderRadius.all(Radius.circular(1.0)),
                            ),
                            child: Text(
                              '$_quantity',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            iconSize: 14,
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
                ],
              ),
              leading: SizedBox(
                width: 65,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AColors.slide,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/image/card.jpg',
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                color: AColors.transparant2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Kargo',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                            ),
                            SizedBox(width: 110),
                            if ((widget.cartItem.pricee * _quantity) >= 500)
                              Text(
                                'Ücretsiz Kargo',
                                style: TextStyle(fontSize: 18, color: Colors.green, fontFamily: 'AvenirB'),
                              )
                            else
                              Text(
                                '35 TL',
                                style: TextStyle(fontSize: 18, color: AColors.icon, fontFamily: 'AvenirB'),
                              ),
                          ],
                        ),



                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: AColors.title2,
                                height: 36,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Toplam Tutar',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'AvenirW',
                                color: AColors.write,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              '${((widget.cartItem.pricee * _quantity) >= 500 ? 0 : 35) + (widget.cartItem.pricee * _quantity)} \TL',
                              style: TextStyle(
                                fontSize: 20,
                                color: AColors.sale,
                                fontFamily: 'AvenirB',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
