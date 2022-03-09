import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurants_app/providers/login_page_provider.dart';
import 'package:restaurants_app/widgets/create_account.dart';
import 'package:restaurants_app/widgets/generic_button.dart';
import 'package:restaurants_app/widgets/input_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginPageProvider controller = Provider.of<LoginPageProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InputField(controller: controller.emailcontroller, name: 'Login'),
          const SizedBox(height: 20),
          InputField(
            controller: controller.passwordcontroller,
            name: 'Password',
          ),
          const SizedBox(height: 20),
          GenericButton('Enter', () {
            controller.navigateToSearchPage(context);
          }),
          const SizedBox(height: 20),
          const CreateAccount()
        ]),
      ),
    );
  }
}
