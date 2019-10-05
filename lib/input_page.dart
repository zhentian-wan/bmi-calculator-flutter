import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const defaultCardBackgroundColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      colour: defaultCardBackgroundColor,
                    ),
                  ),
                  Expanded(
                    child: Card(
                      colour: defaultCardBackgroundColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                colour: defaultCardBackgroundColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      colour: defaultCardBackgroundColor,
                    ),
                  ),
                  Expanded(
                    child: Card(
                      colour: defaultCardBackgroundColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}

class Card extends StatelessWidget {
  // only set once and cannot be changed
  final Color colour;
  Card({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
