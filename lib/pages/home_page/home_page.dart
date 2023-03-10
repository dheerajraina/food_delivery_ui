import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              TopBar(title: title),
              const SearchLocation(),
              Types(),
              const SearchBar(),
              const Collections(),
              const Redeem(),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              const TopOutlets(),
              Options2(),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              RedeemPoints(),
              Options(),
              TopRedeemBrands(),
            ],
          ),
        ),
        Positioned(
         bottom: 30,
         right: 20
         ,
        child: BottomNavBar()),
      ],
    ));
  }
}
