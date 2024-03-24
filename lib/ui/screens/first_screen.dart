import 'package:flutter/material.dart';
import 'package:nigerquiz/config/theme/styles.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  AppStyles appStyle = AppStyles();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        //const Center(child: Text(appName, style: appStyle.pageTitle)),
        Image.asset(
          'assets/imgs/desk.png',
          fit: BoxFit.cover,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: const Text(''))
      ],
    );
  }
}
