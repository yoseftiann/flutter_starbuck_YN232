import 'package:flutter/material.dart';
import 'package:qualif_yn232/models/carousel.dart';

class CarouselHome extends StatelessWidget {
  CarouselHome({super.key});

  List<Carousel> carouselItem =  [
    Carousel(id: 0, image: "assets/promo1.png"),
    Carousel(id: 1, image: "assets/promo2.jpeg"),
    Carousel(id: 2, image: "assets/promo3.png"),
    Carousel(id: 3, image: "assets/promo4.jpeg"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: ClipRRect(
            borderRadius : BorderRadius.all(Radius.circular(10)),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 8,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ),
            const SizedBox(width: 3,),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ),
            const SizedBox(width: 3,),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ),
            const SizedBox(width: 3,),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ),
            const SizedBox(width: 3,),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ),
            const SizedBox(width: 3,)
          ],
        ),
      ],
    );
  }
}