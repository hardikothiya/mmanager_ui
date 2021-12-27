import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mmanager_ui/piechart.dart';

import 'data.dart';

class expansesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            ' Expenses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: Expanses.map((value) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    pieColors[Expanses.indexOf(value)],
                              ),
                              SizedBox(width: 5),
                              Column(
                                children: [
                                  Text(
                                    value['name'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontFamily:
                                            'circular/CircularAir-Light.ttf'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )).toList(),
                  ),
                ),
              ),
              const Expanded(flex: 6, child: pieChart()),
            ],
          ),
        ),
      ],
    );
  }
}
