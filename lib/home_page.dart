import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color _initialColor = Colors.purple;
int _timeDuration = 1000;
double _newHeight = 100;
double _newWidth = 100;

class _MyHomePageState extends State<MyHomePage> {
  void changeSize() {
    if (_newHeight == 100) {
      setState(() {
        _newHeight = _newHeight * 3;
        _newWidth = _newWidth * 3;
      });
    } else {
      setState(() {
        _newHeight = 100;
        _newWidth = 100;
      });
    }
  }

  void changeColor() {
    if (_initialColor == Colors.purple) {
      setState(() {
        _initialColor = Colors.red;
      });
    } else {
      setState(() {
        _initialColor = Colors.purple;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Animation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedContainer(
                height: _newHeight,
                width: _newWidth,
                color: _initialColor,
                duration: Duration(milliseconds: _timeDuration),
                child: AnimatedRotation(
                  turns: 120,
                  duration: Duration(milliseconds: 5000),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: changeSize,
                    child: const Text('To increase the box'),
                  ),
                  ElevatedButton(
                    onPressed: changeColor,
                    child: const Text('To change colour'),
                  ),
                  ElevatedButton(
                    onPressed: changeColor,
                    child: const Text('To change position'),
                  ),
                ],
              ),
              Container(),
              Container(),
            ],
          ),
        ));
  }
}
