import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/carousel_show.dart';
import 'package:qualif_yn232/utils/gap.dart';
import 'package:qualif_yn232/utils/gap_width.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Item 1 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const[
                    Text("111",
                      style: TextStyle(
                      fontSize: 50,
                      fontFamily: "Epilogue",
                      fontWeight: FontWeight.w600,
                      )
                    ),
                     Icon(Icons.star,
                          size: 32,
                          color: Color.fromARGB(255, 238, 201, 40),
                     )
                  ],
                ),
                const Text("Star balance",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Epilogue",
                  fontWeight: FontWeight.w300
                ),
                )
              ],
            ),
            Gap(30),
            //Item 3
            const LinearProgressIndicator(
              minHeight: 5,
              value: 0.111, //dummy
              backgroundColor: Colors.black26,
              color: Color.fromARGB(255, 238, 201, 40),
            ),
    
    
            Gap(30),
            //Item 2
            Row(
              children: [
                OutlinedButton(onPressed: () {
    
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: const BorderSide(
                    color: Colors.black,
                    width: 1.5
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10)
                ),
                child: const Text("Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18
                    ),
                  ),
                ),
                GapHorizontal(10),
                OutlinedButton(onPressed: () {
    
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
                  backgroundColor: Colors.black
                ),
                child: const Text("Redeem",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                )
              ],
            ),
     
            //Item Carousel
            Gap(30),
            const SafeArea(
              child: CarouselShow()
            ),

            Gap(30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Article's",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 17, 57, 47)
                ),
              )
            ),
    
            //Item 4
            Gap(10),
            Container(
              height: 125,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color.fromARGB(255, 239, 239, 239),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 2)                  
                  )
                ]
              ),

              child: Row(
                children: [
                  //Child1
                  Container(
                    
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10), 
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(4), 
                        bottomRight: Radius.circular(4),
                      ),
                      child: Image.asset("assets/infographic1.png",
                      fit: BoxFit.cover,
                      width: (MediaQuery.of(context).size.width - 40)/2.5,
                      height: double.infinity,
                      ),
                    ),  
                  ),
                  GapHorizontal(20),

                  //Child2
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Gap(15),
                        const Text("Mobile Order",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Kanit",
                          fontWeight: FontWeight.w400
                          ),
                        ),
                        const Expanded(
                          child: Text("Get 10 Bonus Stars for any purchase made via Mobile Order.",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.w300,
                              wordSpacing: 2,
                              letterSpacing: 0.5,

                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text("terms & condition applied",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),

            //Item5
            Gap(20),
            Container(
              height: 125,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color.fromARGB(255, 239, 239, 239),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 2)                  
                  )
                ]
              ),

              child: Row(
                children: [
                  //Child1
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Gap(15),
                        const Text("Claim Yours",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Kanit",
                          fontWeight: FontWeight.w400
                          ),
                        ),
                        const Expanded(
                          child: Text("Get the best of starbucks Rewards right at your fingertips.",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.w300,
                              wordSpacing: 2,
                              letterSpacing: 0.5
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("terms & condition applied",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  GapHorizontal(20),

                  //Child2
                  Container(
                    
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10), 
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(4), 
                        bottomRight: Radius.circular(4),
                      ),
                      child: Image.asset("assets/infographic2.png",
                      fit: BoxFit.cover,
                      width: (MediaQuery.of(context).size.width - 40)/2.5,
                      height: double.infinity,
                      ),
                    ),  
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}