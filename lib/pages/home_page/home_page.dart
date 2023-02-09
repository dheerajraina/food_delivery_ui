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
        body: Wrap(
      children: [
        TopBar(title: title),
        const SearchLocation(),
        const SearchBar(),
        const Collections()
      ],
    ));
  }
}
