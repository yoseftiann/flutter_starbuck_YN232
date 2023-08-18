import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/crete_single_item_menu.dart';
import 'package:qualif_yn232/models/drinks.dart';
import 'package:qualif_yn232/utils/gap.dart';

class CreateTwoItem extends StatefulWidget {
  final Drink drink1;
  final Drink drink2;
  CreateTwoItem({Key?key, required this.drink1, required this.drink2});

  @override
  State<CreateTwoItem> createState() => _CreateTwoItemState();
}

class _CreateTwoItemState extends State<CreateTwoItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //1 row isi 2 menu
      children: [
        CreateSingleItem(drink: widget.drink1),
        CreateSingleItem(drink: widget.drink2),
      ],
    );;
  }
}