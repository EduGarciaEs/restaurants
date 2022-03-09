import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurants_app/providers/new_user_page_provider.dart';
import 'package:restaurants_app/widgets/input_field.dart';
import 'package:restaurants_app/widgets/register_button.dart';

class NewUserPage extends StatelessWidget {
  const NewUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewUserPageProvider controller = Provider.of<NewUserPageProvider>(context);

    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                controller: controller.newusernamecontroller,
                name: 'New User Email',
              ),
              const SizedBox(height: 20),
              InputField(
                controller: controller.passwordcontroller,
                name: 'Password',
              ),
              const SizedBox(height: 20),
              InputField(
                controller: controller.confirmpasswordcontroller,
                name: 'Confirm Password',
              ),
              const SizedBox(height: 20),
              const RegisterButton()
            ],
          ),
        ));
  }
}
