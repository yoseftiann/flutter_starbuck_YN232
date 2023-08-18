import 'package:flutter/material.dart';
import 'package:qualif_yn232/components/cards/gift_card.dart';
import 'package:qualif_yn232/components/cards/starbuck_card.dart';
import 'package:qualif_yn232/models/starbuckCard.dart';
import 'package:qualif_yn232/utils/gap.dart';

class MembershipPage extends StatefulWidget {
  const MembershipPage({super.key});

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {

  //Variables
  DateTime now = DateTime.now();
  String selectedImage = "assets/card_starbuck.png";

  List<StarbuckCard> starbuckCards = [
    StarbuckCard(id: "0001", image: "assets/card_starbuck.png"),
    StarbuckCard(id: "0002", image: "assets/card_starbuck_2.png"),
    StarbuckCard(id: "0003", image: "assets/card_starbuck_3.png")
  ];

  void updateSelectedImage(String newImage) {
    setState(() {
      selectedImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        child: Column(
          children: [
            //Child1
            Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Your Account Balance",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const[
                              Text("Rp. 232,XXX",
                                style: TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.w400
                                ),
                              ), 
                              Icon(Icons.replay_rounded, 
                                size: 18,
                              )
                            ],
                          ),
                          const Text("Active",
                            style: TextStyle(
                              color: Color.fromARGB(255, 67, 160, 71),
                              fontSize: 18
                            ),
                          ),
                          const Text("TOP UP",
                          style: TextStyle(
                              color: Color.fromARGB(255, 25, 81, 66),
                              fontSize: 20
                            ),
                          )
                        ],
                      ),

                    Center(
                      child: Text("As of ${formattedDate}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          fontStyle: FontStyle.italic
                          ),
                        ),
                      ),  
                    ],
                  ),
                ),
            //Child2
            Gap(10),
            GiftCard(image : selectedImage), //Ubah parameter untuk ganti muka kartunya
            Gap(20),

            //Child3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(onPressed: () {
                  
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 56, 142, 60),
                    width: 1.5
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5)
                ),
                child: Text("Manage",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.green[700],
                      fontSize: 18
                    ),
                  ),
                ),
                OutlinedButton(onPressed: () {
    
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  backgroundColor: Colors.green[700]
                ),
                child: const Text("Pay",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                )
              ],
            ),
            Gap(20),

            //Child (My Card)
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("My Card",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 17, 57, 47)
                    ),
                  ),
                ],
              ),
            ),

            Gap(10),
            SizedBox(
              height: height/10,
              width: width,
              child: CreateStarbuckCards(
                starbuckCards: starbuckCards,
                onSelectImage: updateSelectedImage
              ),
            )
          ],
        ),
      ),
    );
  }
}