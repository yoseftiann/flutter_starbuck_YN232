import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/create_two_item_menu.dart';
import 'package:qualif_yn232/components/crete_single_item_menu.dart';
import 'package:qualif_yn232/models/drinks.dart';
import 'package:qualif_yn232/utils/gap.dart';

class CreateItemMenu extends StatefulWidget {
  const CreateItemMenu({super.key});

  @override
  State<CreateItemMenu> createState() => _CreateItemMenuState();
}

class _CreateItemMenuState extends State<CreateItemMenu> {
  //Variables
  List<Drink> drinkList = [
    Drink(
      id: 0, 
      name: "Strawberry Berry", 
      image: "assets/strawberry2.png", 
      description: "Enak dah pokoknya", 
      price: 45.00,
      type: "Pink",
      imageDetail: "assets/strawberry3.png",
      category: "Tea"
    ),
    Drink(
      id: 1, 
      name: "Matcha Axure", 
      image: "assets/matcha.png", 
      description: "Enak dah pokoknya", 
      price: 64.00,
      type: "Green",
      imageDetail: "assets/matcha3.png",
      category: "Frappe"

    ),
    Drink(
      id: 2, 
      name: "Caramel Macchiato", 
      image: "assets/caramel_macchiato-removebg-preview.png", 
      description: "Enak dah pokoknya", 
      price: 64.00,
      type: "Coffee",
      imageDetail: "assets/caramel3.png",
      category: "Latte"
    ),
    Drink(
      id: 3, 
      name: "Cascara Macchiato", 
      image: "assets/cascara_macchiato.png", 
      description: "Enak dah pokoknya", 
      price: 64.00,
      type: "Coffee",
      imageDetail: "assets/cascara_macchiato3.png",
      category: "Latte"
    ),
  ];

  @override
  Widget build(BuildContext context) {

    List<Widget> _createItems() {
      List<Widget> widgets = [];
      int total = drinkList.length;
      int current = 0;

      while(current < total - 1){
        widgets.add(CreateTwoItem(drink1: drinkList[current], drink2: drinkList[current + 1]));
        widgets.add(Gap(15));
        current = current + 2 ;
      }

      if (current == total - 1) {
        widgets.add(CreateSingleItem(drink: drinkList[current]));
      }

      return widgets;
    }

    return Column(
      children: _createItems()
    );
  }
}