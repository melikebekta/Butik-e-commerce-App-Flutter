import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:moda_gulay_butik/Utils/Colors.dart';

import '../Screen/shop.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double heightslider =MediaQuery.of(context).size.height;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 300,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: [
            'assets/image/sliderp1.jpg',
            'assets/image/sliderp2.jpg',
            'assets/image/sliderp3.jpg',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    _onImageTap(_currentIndex);
                  },
                    child: Container(
                      height: heightslider,
                   width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage(i),
                fit: BoxFit.cover,
                ),),
                      child: Stack(
                        children: [
                Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: DotsIndicator(
                        dotsCount: 3, // Dots sayısını istediğiniz sayıya ayarlayın
                         position: _currentIndex.toDouble(),
                         decorator: DotsDecorator(
                         color: AColors.mainpage,
                           size: const Size.square(8.0),
                           activeSize: const Size(20.0, 8.0),
                           activeColor: AColors.mainpage,
                           activeShape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(5.0),),

                         ),
                ),
                ),
                )
                //)
                        ],

                      ),
                ));
              },
            );
          }).toList(),
        ),

      ],
    );
  }

  void _onImageTap(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Shop()
      ),
    );
  }
}

