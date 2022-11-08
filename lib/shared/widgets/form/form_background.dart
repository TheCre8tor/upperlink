import 'package:flutter/material.dart';

class FormBackground extends StatelessWidget {
  const FormBackground({Key? key, required this.form}) : super(key: key);

  final Widget form;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          right: 30,
          bottom: 30,
          left: 30,
        ),
        child: form,
      ),
    );
  }
}
