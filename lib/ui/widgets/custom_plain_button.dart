import 'package:flutter/material.dart';

class CustomPlainButton extends StatelessWidget {
  final String text;
  
  const CustomPlainButton({
    super.key, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16
        )
      ),
    );
  }
}