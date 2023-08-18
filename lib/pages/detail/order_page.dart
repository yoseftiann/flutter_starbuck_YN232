import 'package:flutter/material.dart';
import 'package:qualif_yn232/models/drinks.dart';
import 'package:qualif_yn232/utils/divider.dart';
import 'package:qualif_yn232/utils/dropdown_option.dart';
import 'package:qualif_yn232/utils/gap.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  OrderPage({Key?key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient( //getColorsceeme(widget.drink.scheme)
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color.fromARGB(255, 238, 238, 238)],
          ),
        ),
      child: Column(
        children: [
          //Item1
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Gap(50),
                Text(widget.drink.category.toUpperCase(),
                style: const TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromARGB(255, 17, 57, 47),
                      
                    ),
                  ),
                Gap(10),
                Container(
                  // color: Colors.greenAccent,
                  child: Image.asset(widget.drink.imageDetail,
                      height: 225,
                    )
                  ),
                Gap(20)
              ],
            ),
          ),

          //Item2
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.grey[100],
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 185, 185, 185),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0,2)
                  )
                ]
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 150,
                          vertical: 5
                          ),
                        child: Container(
                          height: 4, // Thickness of the divider
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 162, 37), // Color of the divider
                            borderRadius: BorderRadius.circular(4), // Adjust the rounding here
                          ),
                        ),
                      ),

                      Text(widget.drink.name,
                        style : const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          // color: Color.fromARGB(255, 20, 21, 24)
                          color: Color.fromARGB(255, 10, 35, 29)
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(widget.drink.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w500,
                          height: 1.25
                        ),
                      ),
                      Gap(5),
                      Text("IDR ${widget.drink.price.toStringAsFixed(2)}", 
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 13, 135, 74)
                        ),
                      ),
              
                      DividerHorizontal(),
              
                      DropdownOption(title: "Add ins"),
                      DividerHorizontal(),
                      DropdownOption(title: "Sugar"),
                      DividerHorizontal(),
                      DropdownOption(title: "Ice"),
                      DividerHorizontal(),
                      DropdownOption(title: "Espresso & Shot"),
                      
                      //Size

                      //Order Button
                      Gap(30),
                      Container(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: () {
                                  
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1.5
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                          backgroundColor: Colors.green
                        ),
                        child: const Text("Order",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}