import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moda_gulay_butik/Screen/HomePage.dart';

class AuthService{
  final userCollection=FirebaseFirestore.instance.collection('Users');
  final firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp(BuildContext context,{
  required String email,
  required String password,
  required String passwordrepaid,
  required String name,
  required String surname,
  required int phone
  }) async {
    final navigator =Navigator.of(context);
    try{
      final UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null){
        _registerUser(email: email, password: password, passwordrepaid: passwordrepaid, name: name, surname: surname, phone: phone);
        navigator.push(MaterialPageRoute(builder: (context) => HomeScreen(),));

      }
    } on FirebaseAuthException catch(e){
      //Fluttertoast.showToast(msg: e.message!, toastLength: Toast.LENGTH_LONG);
    }


  }

  Future<void> signOut() async{
  await firebaseAuth.signOut();

  }


  Future<void> signIn(BuildContext context,{required String email, required String password}) async {
    final navigator =Navigator.of(context);
    try{
    final UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

    if (userCredential.user != null) {
      navigator.push(MaterialPageRoute(builder: (context) => HomeScreen(),));
    }
    } on FirebaseAuthException catch(e){
     // Fluttertoast.showToast(msg: e.message!, toastLength: Toast.LENGTH_LONG);
    }


  }

// üye kayıt
  Future<void> _registerUser({
    required String email,
    required String password,
    required String passwordrepaid,
    required String name,
    required String surname,
    required int phone

  }) async {
    await userCollection.doc().set({
      "email" : email,
      "password" : password,
      "passwordrepaid" : passwordrepaid,
      "name" : name,
      "surname" : surname,
      "phone" : phone
    });

  }
  //connection

  final CollectionReference conneciton = FirebaseFirestore.instance.collection('Connection');

  Future<void> _conneciton({
    required String email,
    required String messages,
    required String names,
    required String message,
    required int phone,
  }) async {
    try {
      await conneciton.add({
        "email": email,
        "messages": messages,
        "names": names,
        "message": message,
        "phone": phone,
      });
      print('Data saved successfully');
    } catch (e) {
      print('Error saving data: $e');
    }
  }

  Future<void> ConnecitonSend(BuildContext context, {
    required String email,
    required String messages,
    required String names,
    required String message,
    required int phone,
    required bool kvkk
  }) async {
    final navigator = Navigator.of(context);
    try {
      if (kvkk) {
        _conneciton(email: email, messages: messages, message: message, phone: phone, names: names);
        navigator.push(MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        // Handle the case where kvkk is false (e.g., show an error message)
      }
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException (e.g., show an error message)
    }
  }




//olmadı

  Future<String> getUserName(String userId) async {
    // Firestore bağlantısını başlat
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // "Users" koleksiyonundan belgeyi çek
    DocumentSnapshot userSnapshot = await firestore.collection('Users').doc(userId).get();

    // Kullanıcının adını al
    String userName = userSnapshot['name'];

    return userName;
  }


}