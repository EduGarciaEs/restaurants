import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        'Create new account',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {
        Navigator.pushNamed(context, 'new_user_page');
      },
    );
  }
}
