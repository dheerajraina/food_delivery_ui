import 'package:flutter/material.dart';
import 'package:food_delivery_ui/config/config.dart';
import 'package:google_fonts/google_fonts.dart';

class TopRedeemBrands extends StatelessWidget {
  TopRedeemBrands({super.key});

  List<List<String>> brands = [
    [
      'Star Bucks',
      'Coffee Shop',
      'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png'
    ],
    [
      'Sushi Samba',
      'Restaurant',
      'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png'
    ],
    [
      'Covent Grocery',
      'Grocery Store',
      'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png'
    ],
    [
      'Asos',
      'Ecommerce',
      'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Top Redeem Outlets',
            style: GoogleFonts.lato(
                textStyle: TextStyles().headlineText5(context), color: Pallete().grey),
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: brands.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.01,
                    right: screenHeight * 0.01,
                    top: screenHeight * 0.02,
                    // bottom: screenHeight*0.1
                  ),
                  child: Material(
                      clipBehavior: Clip.hardEdge,
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.02),
                          child: Material(
                              clipBehavior: Clip.hardEdge,
                              elevation: 10,
                              borderRadius: BorderRadius.circular(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image(
                                  height: screenHeight*0.08,
                                  image: NetworkImage(brands[index][2])),
                                  Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(

                                      brands[index][0],
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyles().headlineText6(context),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        brands[index][1],
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyles().largeText(context),
                                            color: Pallete().grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.hardEdge,
                                        // width: screenWidth * 0.4,
                                        height: screenHeight * 0.04,
                                        decoration: BoxDecoration(
                                          color: Pallete().white,
                                        ),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "INR 20",
                                                style: GoogleFonts.lato(
                                                    textStyle: TextStyles().mediumText(context),
                                                    color: Pallete().black,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ]),
                                      ),
                                      Container(
                                        clipBehavior: Clip.hardEdge,
                                        height: screenHeight * 0.05,
                                        width: screenHeight * 0.16,
                                        decoration: BoxDecoration(
                                          color: Pallete().green,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "7 rywards points",
                                              style: GoogleFonts.lato(
                                                textStyle: TextStyles().mediumText(context),
                                                color: Pallete().white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )))),
                );
              }),
        ],
      ),
    );
  }
}
