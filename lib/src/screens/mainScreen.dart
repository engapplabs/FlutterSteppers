import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int stepCounter = 0;

  List<Step> steps = [
    Step(
      title: new Text('Digite seu nome'),
      content: new TextFormField(
        decoration: new InputDecoration(
          labelText: 'Digite seu nome',
          hintText: 'João',
        ),
      ),
      isActive: true,
    ),
    Step(
      title: new Text('Digite seu email'),
      content: new TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: new InputDecoration(
          labelText: 'Digite seu email',
          hintText: 'you@example.com',
        ),
      ),
      isActive: true,
    ),
    Step(
      title: new Text('Digite sua senha'),
      content: new TextFormField(
        obscureText: true,
        decoration: new InputDecoration(
          labelText: 'Digite seu nome',
        ),
      ),
      isActive: true,
    ),
    Step(
      title: new Text('Confirme sua senha'),
      content: new TextFormField(
        obscureText: true,
        decoration: new InputDecoration(
          labelText: 'Digite seu nome',
        ),
      ),
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Stepper(
          currentStep: this.stepCounter,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              stepCounter = step;
            });
          },
          onStepCancel: () {
            setState(() {
              stepCounter > 0 ? stepCounter-- : stepCounter = 0;
            });
          },
          onStepContinue: () {
            setState(() {
              stepCounter < steps.length - 1 ? stepCounter++ : stepCounter = 0;
            });
          },
        ),
      ),
    );
  }
}
