import 'package:flutter/material.dart';
import 'package:mmanager_ui/data.dart';

import 'cardsection.dart';
import 'expansesSection.dart';
import 'header.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            height: 120,
            child: Walletheader(),
          ),
          Expanded(
            child: cardSection(),
          ),
          Expanded(
            child: expansesSection(),
          ),
        ],
      ),
    );
  }
}
