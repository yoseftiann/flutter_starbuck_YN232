  import 'package:flutter/material.dart';
  import 'package:qualif_yn232/models/starbuckCard.dart';
import 'package:qualif_yn232/utils/gap_width.dart';

  class CreateSingleCard extends StatefulWidget {
    final StarbuckCard starbuckcard;
    CreateSingleCard({Key?key, required this.starbuckcard});

    @override
    State<CreateSingleCard> createState() => _CreateSingleCardState();
  }

  class _CreateSingleCardState extends State<CreateSingleCard> {
    @override
    Widget build(BuildContext context) {
      final double height = MediaQuery.of(context).size.height;
      final double width = MediaQuery.of(context).size.width;

      return Row(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Adjust the opacity as needed
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 2), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: width / 3 ,
                height: height / 10,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.starbuckcard.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          GapHorizontal(20)
        ],
      );
    }
  }