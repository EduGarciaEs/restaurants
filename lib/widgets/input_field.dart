import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String name;
  TextEditingController controller;

  InputField({Key? key, required this.name, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      color: Colors.white,
      child: TextFormField(
          autocorrect: false, decoration: InputDecoration(labelText: name)),
    );
  }
}
