import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'card.dart';
import 'newcard.dart';
import 'bottomNavbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/png/clothes.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        child: Text(
                          "Street clothes",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        bottom: 20,
                        left: 15,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sale",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        Text("view all", style: TextStyle(fontSize: 12))
                      ],
                    ),
                    SizedBox(height: 3),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Super summer sale",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 260,
                      child: ListView(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            ItemCard(
                              imagePath: "assets/image/model1.jpg",
                              solde: 20,
                              rate: 10,
                              brand: "Dorothy Perkins",
                              type: "Evening Dress",
                              oldPrice: 15,
                              newPrice: 12,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            ItemCard(
                                imagePath: "assets/image/model2.jpg",
                                solde: 15,
                                rate: 10,
                                brand: "Sitlly",
                                type: "Sport Dress",
                                oldPrice: 22,
                                newPrice: 19),
                            SizedBox(
                              width: 18,
                            ),
                            ItemCard(
                                imagePath: "assets/image/model3.jpg",
                                solde: 25,
                                rate: 8,
                                brand: "Doro Doro",
                                type: "Sport Dress",
                                oldPrice: 14,
                                newPrice: 10)
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        Text("view all", style: TextStyle(fontSize: 12))
                      ],
                    ),
                    SizedBox(height: 3),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "You’ve never seen it before!",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 260,
                      child: ListView(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            NewItemCard(
                              imagePath: "assets/image/model4.jpg",
                              rate: 0,
                              brand: "OVS",
                              type: "Blouse",
                              price: 30,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            NewItemCard(
                              imagePath: "assets/image/model5.jpg",
                              rate: 7,
                              brand: "Mango Boy",
                              type: "T-Shirt Sailing",
                              price: 10,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            NewItemCard(
                              imagePath: "assets/image/model6.jpg",
                              rate: 10,
                              brand: "Cool ",
                              type: "Robe",
                              price: 45,
                            )
                          ]),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
