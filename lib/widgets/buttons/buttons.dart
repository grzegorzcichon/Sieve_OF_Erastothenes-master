import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sieveoferatosthenes/resources/colors/colors.dart';

class BaseButton extends StatelessWidget {
  final Widget textView;
  final VoidCallback onPressed;
  final Color? color;

  BaseButton({required this.textView, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: textView,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          side: BorderSide(
              width: 1.0,
              color: Theme.of(context).colorScheme.getprimenumberButtonColor)),
    );
  }
}
