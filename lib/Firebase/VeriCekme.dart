import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:moda_gulay_butik/Firebase/Model.dart';
class FirebaseService{
  final proCol= FirebaseFirestore.instance.collection('Product');

  Future<ProductList> getProCol(String Category) async {

    final col =
    await proCol.doc(Category).get().then((value) => value.data());
  
    final model= ProductList.fromJson(col);
    return model;
  
  }
}