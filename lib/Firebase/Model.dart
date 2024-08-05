import 'dart:ui';

import 'package:moda_gulay_butik/Firebase/ColorModel.dart';
import 'package:moda_gulay_butik/Firebase/ImgModel.dart';
import 'package:moda_gulay_butik/Firebase/SizeModel.dart';

class ProductList{
  final List<Product> product;
  ProductList({
    required this.product
});
  factory ProductList.fromJson(Map<String, dynamic>? json){
    List<Product> product =[];
    if(json != null){
    for(var i in json['Category']){
      product.add(Product.fromJson(i));
    }}
    return ProductList(product: product);
  }
}

class Product {
  final String pname;
  final String pcode;
  final String Category;
  final double pprice;
  final double psale;
  final bool? pstock;
  final List<ImgModel> imgUrl;
  final List<SizeModel> psize;
  final List<ColorModel> pcolor;

  Product({
    required this.pcode,
    required this.pname,
    required this.Category,
    required this.pprice,
    required this.psale,
    required this.pstock,
    required this.imgUrl,
    required this.psize,
    required this.pcolor,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      pcode: json['pcode'],
      pname: json['pname'],
      Category: json['Category'],
      pprice: json['pprice'],
      psale: json['psale'],
      pstock: json['pstock'],
      imgUrl: json['imgUrl'],
      psize: json['psize'],
      pcolor: json['pcolor'],
    );
  }
}
