import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
}

// fading button
class ButtonFade extends StatefulWidget {
  @override
  createState() => ButtonFadeState();
}

class ButtonFadeState extends State<ButtonFade> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 2),
          child: ElevatedButton(
            child: Text('fade me'),
            onPressed: () {
              setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
            },
          ),
        ),
      ],
    );
  }
}
