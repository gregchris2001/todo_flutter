import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Botton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.blue[400],
      child: Text(text),
    );
  }
}
