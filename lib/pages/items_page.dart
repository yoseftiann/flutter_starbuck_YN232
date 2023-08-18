import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/cards/category_item.dart';
import 'package:qualif_yn232/components/create_item_menu.dart';
import 'package:qualif_yn232/components/crete_single_item_menu.dart';
import 'package:qualif_yn232/utils/gap.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.green,
        child: 
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //Child1
              Gap(15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Adjust your flavour today!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 17, 57, 47)
                    ),
                  ),
                  Text("Make your day even more special with Starbucks various drink.",
                    style: TextStyle(
                      fontSize: 17,
                      // fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
              Gap(15),
              //Child2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  // GapHorizontal(5),
                  //Black
                  CategoryItem(title: "Black", image: "assets/black2.png",),
                  CategoryItem(title: "Latte", image: "assets/latte_art1.png",),
                  CategoryItem(title: "Tea", image: "assets/tea2.png",),
                  CategoryItem(title: "Frappe", image: "assets/frappe.png",),
                ]
              ),
              //Gap
              Gap(30),

              //Child3
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Favorites",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 17, 57, 47)
                      ),
                    ),
                    Text("check our best selling drink",
                      style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
              Gap(15),
              //Child4
              const CreateItemMenu(),
            ],
          ),
        ),
      ),
    );
  }
}