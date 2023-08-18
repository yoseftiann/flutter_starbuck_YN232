import 'package:flutter/material.dart';
import 'package:qualif_yn232/models/drinks.dart';
import 'package:qualif_yn232/pages/detail/forum_page.dart';
import 'package:qualif_yn232/pages/detail/order_page.dart';

class DetailPage extends StatefulWidget {
  final Drink drink;
  DetailPage({Key?key, required this.drink});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("STARBUCKS",
            style: TextStyle(
              fontSize: 26,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 26, 85, 28)
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab ,
                indicator: BoxDecoration(
                  gradient: const LinearGradient( //getColorsceeme(widget.drink.scheme)
                    colors: [Color.fromARGB(255, 55, 137, 98), Color.fromARGB(255, 26, 85, 28)],
                  ),
                  borderRadius: BorderRadius.circular(25)
                ),
                tabs: const [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("ORDER",
                        style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                         )
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("FORUM",
                        style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ] 
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            OrderPage(drink: widget.drink),
            ForumPage()
            ]
          )
      ),
    );
  }
}