import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/cards/item_coffee.dart';
import 'package:qualif_yn232/components/cards/item_green.dart';
import 'package:qualif_yn232/components/cards/item_pink.dart';
import 'package:qualif_yn232/models/drinks.dart';
import 'package:qualif_yn232/pages/detail_page.dart';

class CreateSingleItem extends StatefulWidget {
  final Drink drink;
  CreateSingleItem({Key? key, required this.drink}) : super(key: key);

  @override
  State<CreateSingleItem> createState() => _CreateSingleItemState();
}

class _CreateSingleItemState extends State<CreateSingleItem> {

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width - 50; //pading;

    Widget child;
    if (widget.drink.type == "Green") {
      child = ItemGreen(drink: widget.drink);
    } else if (widget.drink.type == "Pink") {
      child = ItemPink(drink: widget.drink);
    } else {
      child = ItemCoffee(drink: widget.drink);
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetailPage(drink: widget.drink)
          )
        );
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: width/2,
          child: child,
        ),
      )
    );
    
  }
}