import 'package:flutter/material.dart';
import 'package:qualif_yn232/models/drinks.dart';

  class ItemPink extends StatefulWidget {
    final Drink drink;
    const ItemPink({required this.drink, Key? key}) : super(key: key);

    @override
    State<ItemPink> createState() => _ItemPinkState();
  }

  class _ItemPinkState extends State<ItemPink> {
    @override
    
    Widget build(BuildContext context) {
      final double height = MediaQuery.of(context).size.height / 3;
      return LayoutBuilder(
          builder: (context, constraints) => 
          Stack(
            children: [
              //Stack1
              Container(
                height: height ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.white.withOpacity(0.9),
                  color: Colors.pink[400]?.withOpacity(0.7),
                  boxShadow: const[
                    BoxShadow(
                      color: Color.fromARGB(255, 245, 245, 245),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, -2)
                    )
                  ]
                ),
                // child: Text("item1"),
              ),
              
              //Stack2
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: height,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: ,
                  children: [
                    //Child1
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200]?.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(45),
                            bottomRight: Radius.circular(45),
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)
                          )
                        ),
                        height:  height / 4 ,
                        width: constraints.maxWidth / 1.1,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100]?.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45)
                          )
                        ),
                        height:  height / 4 ,
                        width: constraints.maxWidth / 1.1,
                      ),
                    ),
                  ],
                )
              ),
              
              //Stack3
              Container(
                // color : Colors.blue,
                height: height,
                child: Image.asset(widget.drink.image,
                  fit: BoxFit.cover,
                  // height: height,
                ),
              ),

              //Stack4
              Positioned( 
                left: 10,
                right: 10,
                bottom: 10,
                child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                
                  //Child1 
                  Text(widget.drink.name,
                    style: const TextStyle(
                      fontFamily: "Epilogue",
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 241, 241, 241),
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, -2.0),
                          blurRadius: 10.0,
                          color: Color.fromARGB(255, 61, 61, 61),
                        )
                      ]
                    ),
                  ),
                  Text("IDR ${widget.drink.price}K",
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.9),
                    shadows: const[
                        Shadow(
                          offset: Offset(2.0, -2.0),
                          blurRadius: 5.0,
                          color: Color.fromARGB(255, 61, 61, 61),
                        )
                      ]
                  ),
                  )
                ],
                )
              ),

              //Stack6 (Icon)
              Positioned(
                top: 5,
                right: 5,
                // left: 10,
                child: InkWell(
                  onTap: () => print("asd"),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    width: 35,
                    height: 35,
                    child: Center(
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.green[300],
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
        );
    }
  }