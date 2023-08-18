import 'package:flutter/material.dart';
import 'package:qualif_yn232/models/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselShow extends StatefulWidget {
  //add parameter
  const CarouselShow({super.key});

  @override
  State<CarouselShow> createState() => _CarouselShowState();
}

class _CarouselShowState extends State<CarouselShow> {

  //Variables
  int currentIndex = 0;
  List<Carousel> carouselList =  [
    Carousel(id: 0, image: "assets/promo1.png"),
    Carousel(id: 1, image: "assets/promo2.jpeg"),
    Carousel(id: 2, image: "assets/promo3.png"),
    Carousel(id: 3, image: "assets/promo4.jpeg"),
  ];

  late List<Widget> imageSlider;

  @override
  void initState() {
    // TODO: implement initState
    imageSlider = carouselList.map((c){
      return Container(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: AspectRatio(
            aspectRatio: 16/9, 
            child: Image.asset(c.image,
              fit: BoxFit.cover,
            ),
        ),
        )
      );
    }).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            items: imageSlider, 
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              //  enlargeCenterPage : true,
              enlargeFactor: 0.3,
              viewportFraction: 0.8,
              onPageChanged: (index, reason){
                setState(() {
                  currentIndex = index;
                });
              },
            ),)
        ],
      ),
      );
  }
}