import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  final String imagePath;
  final String brand;
  final String type;
  final int solde;
  final int rate;
  final int oldPrice;
  final int newPrice;

  ItemCard(
      {super.key,
      required this.imagePath,
      required this.solde,
      required this.rate,
      required this.brand,
      required this.type,
      required this.oldPrice,
      required this.newPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 260,
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                width: double.infinity,
                height: 184,
                child: Image.asset(
                  this.imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 7.0,
                left: 7.0,
                child: Container(
                    width: 40,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '-$solde%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              letterSpacing: 0.3),
                        ))),
              ),
              Positioned(
                bottom: -15.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3.0, // soften the shadow
                          spreadRadius: 0.1, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 0  horizontally
                            0.0, // Move to bottom 0 Vertically
                          ),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      'assets/svg/heart-empty-gray.svg',
                      width: 10,
                      height: 10,
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 30,
                  height: 30,
                ),
              ),
            ]),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(children: [
                  Image.asset(
                    'assets/png/star-yellow.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  Image.asset(
                    'assets/png/star-yellow.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  Image.asset(
                    'assets/png/star-yellow.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  Image.asset(
                    'assets/png/star-yellow.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.scaleDown,
                  ),
                  Image.asset(
                    'assets/png/star-gray.png',
                    width: 12,
                    height: 12,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '($rate)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(this.brand,
                      style: TextStyle(
                          color: Color(0xff404040),
                          fontSize: 11,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: 2,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    this.type,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text(
                      '$oldPrice\$',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '$newPrice\$',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
              ],
            )
          ],
        ));
  }
}
