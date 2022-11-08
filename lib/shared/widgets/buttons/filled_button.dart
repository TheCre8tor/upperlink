import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({
    Key? key,
    required this.onPressed,
    required this.name,
    required this.padding,
    required this.background,
  }) : super(key: key);

  final void Function() onPressed;
  final String name;
  final EdgeInsets padding;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(400, 55)),
          backgroundColor: MaterialStatePropertyAll(
            background,
          ),
        ),
        child: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
