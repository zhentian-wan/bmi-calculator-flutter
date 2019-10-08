import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_custom.dart';
import 'icon_text.dart';

const bottomContainerHeight = 80.0;
const defaultCardBackgroundColor = Color(0xFF1D1E33);
const inactivateCardBgColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                    child: SelfCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      cardChild: IconText(
                        faIcon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                      colour: selectedGender == Gender.Male
                          ? defaultCardBackgroundColor
                          : inactivateCardBgColor,
                    ),
                  ),
                  Expanded(
                    child: SelfCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.Female;
                        });
                      },
                      cardChild: IconText(
                        faIcon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.Female
                          ? defaultCardBackgroundColor
                          : inactivateCardBgColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SelfCard(
                colour: defaultCardBackgroundColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SelfCard(
                      colour: defaultCardBackgroundColor,
                    ),
                  ),
                  Expanded(
                    child: SelfCard(
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
