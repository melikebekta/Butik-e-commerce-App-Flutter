import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:moda_gulay_butik/Firebase/Register.dart';
import '../utils/Colors.dart';
import '../Widget/Bottombar_Widget.dart';
import 'Drawer.dart';
import 'Favorites.dart';
import 'HomePage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  final _tName = TextEditingController();
  final _tSName = TextEditingController();
  final _temail = TextEditingController();
  final _tphone = TextEditingController();
  final _tpassword = TextEditingController();
  final _tpasswordr = TextEditingController();

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'E-posta Adresiniz',
                            style: TextStyle(
                              color: AColors.title2,
                              fontFamily: 'AvenirW',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _temail,
                            textAlign: TextAlign.start,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),

                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Şifreniz',
                            style: TextStyle(
                              color: AColors.title2,
                              fontFamily: 'AvenirW',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _tpassword,
                            textAlign: TextAlign.start,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Şifreniz Tekrar',
                            style: TextStyle(
                              color: AColors.title2,
                              fontFamily: 'AvenirW',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: _tpasswordr,
                            textAlign: TextAlign.start,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  color: AColors.sale,
                                  height: 36,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Adınız',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AColors.title2, fontFamily: 'AvenirW'),
                          ),
                          TextFormField(
                            controller: _tName,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Soyadınız',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AColors.title2, fontFamily: 'AvenirW'),
                          ),
                          TextFormField(
                            controller: _tSName,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Cep Telefonunuz',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AColors.title2, fontFamily: 'AvenirW'),
                          ),
                          TextFormField(
                            controller: _tphone,
                            inputFormatters: [maskFormatter],
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextButton(
                            onPressed: () {
                              AuthService().signUp(context ,email: _temail.text, password: _tpassword.text,passwordrepaid: _tpasswordr.text ,name: _tName.text, surname: _tSName.text, phone: _tphone.hashCode);
                            },
                            style: flatButtonStyle,
                            child: Text(
                              'Ücretsiz Kayıt Ol',
                              style: TextStyle(color: AColors.mainpage),
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                    // ... rest of your code
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerMenu(),
bottomNavigationBar: BottombarWidget(),// Add this line to set the drawer
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  backgroundColor: AColors.icon,
  minimumSize: const Size(350, 60),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
  textStyle:
      const TextStyle(fontFamily: 'AvenirB', fontSize: 20, color: Colors.white),
);
var maskFormatter = MaskTextInputFormatter(
    mask: '+90 (5##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
