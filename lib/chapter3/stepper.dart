import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperApp extends StatefulWidget {
  @override
  _StepperAppState createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  var _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _currentStep,
        onStepContinue:
            _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
        onStepCancel:
            _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        steps: [
          Step(
            title: Text('Get Ready'),
            isActive: true,
            content: Text('Let\'s begin...'),
          ),
          Step(
            title: Text('Get Set'),
            isActive: true,
            content: Text('Ok, just a little more'),
          ),
          Step(
            title: Text('Go!'),
            isActive: true,
            content: Text('We are down'),
          ),
        ],
      ),
    );
  }
}
