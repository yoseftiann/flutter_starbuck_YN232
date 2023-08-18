import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/cards/E-Card/create_single_starbuck_card.dart';
import 'package:qualif_yn232/models/starbuckCard.dart';

class CreateStarbuckCards extends StatefulWidget {
  final List<StarbuckCard> starbuckCards;
  final Function(String) onSelectImage;
  CreateStarbuckCards({Key?key, required this.starbuckCards, required this.onSelectImage});

  @override
  State<CreateStarbuckCards> createState() => _CreateStarbuckCardsState();
}

class _CreateStarbuckCardsState extends State<CreateStarbuckCards> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return ListView( // Carousel
      scrollDirection: Axis.horizontal,
      children: widget.starbuckCards.map((c) { //Di map
        return GestureDetector(
          onTap: () {
            widget.onSelectImage(c.image);
          },
          child: CreateSingleCard(starbuckcard: c),
        );
        }
      ).toList()
    );
  }
}