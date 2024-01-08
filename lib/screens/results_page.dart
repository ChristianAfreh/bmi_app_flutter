import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bMIResultValue,
    required this.bMIResultTitle,
    required this.bMIResultInterpretation,
  });

  final String bMIResultValue;
  final String bMIResultTitle;
  final String bMIResultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bMIResultTitle.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bMIResultValue,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bMIResultInterpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
