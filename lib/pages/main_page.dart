import 'package:flutter/material.dart';
import 'package:qualif_yn232/pages/home_page.dart';
import 'package:qualif_yn232/pages/items_page.dart';
import 'package:qualif_yn232/pages/membership_page.dart';
import 'package:qualif_yn232/pages/star_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  //Variables
  List<Widget> pages = [
    const HomePage(),
    const MembershipPage(),
    const ItemPage(),
    const StarPage()
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
          title: const Text("STARBUCKS",
            style: TextStyle(
              fontSize: 26,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 26, 85, 28)
            ),
          ),
      ),

      //Body
      body: pages[currentPage],

      //NavigationBar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35), 
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35)
          ),
          child: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.green[600],
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            items: const[
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 28,
                ),
                tooltip: "Home",
                activeIcon: Icon(
                  Icons.home_rounded,
                  size: 30,
                  ),
                label: "Home"
                ),
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_membership_rounded,
                  size: 28,
                ),
                tooltip: "Order",
                activeIcon: Icon(
                  Icons.card_membership_rounded,
                  size: 30,
                  ),
                label: "Order"
                ),
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.coffee_rounded,
                  size: 28,
                ),
                tooltip: "Order",
                activeIcon: Icon(
                  Icons.coffee_rounded,
                  size: 30,
                  ),
                label: "Order"
                ),
                BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border_rounded,
                  size: 28,
                ),
                tooltip: "Star",
                activeIcon: Icon(
                  Icons.star_rounded,
                  size: 30,
                  ),
                label: "Star"
                )
              ]
              ),
          ),
        )
      );
    // );
  }
}