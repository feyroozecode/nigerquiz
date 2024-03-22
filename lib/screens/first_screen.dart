import 'package:flutter/material.dart';
import 'package:nigerquiz/data/static_datas/global.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Center(child: Text(appName, style: TextStyle(fontSize: 35))),
        Image.asset(
          'assets/imgs/desk.png',
          fit: BoxFit.cover,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text(''))
      ],
    );
  }
}
