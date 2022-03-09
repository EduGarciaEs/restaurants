import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurants_app/providers/login_page_provider.dart';
import 'package:restaurants_app/providers/new_user_page_provider.dart';
import 'package:restaurants_app/providers/searcher_page_provider.dart';

import 'pages/login_page.dart';
import 'pages/new_user.dart';
import 'pages/searcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginPageProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (context) => NewUserPageProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (context) => SearcherPageProvider(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurants App',
        initialRoute: 'login_page',
        routes: {
          'login_page': (_) => const LoginPage(),
          'new_user_page': (_) => const NewUserPage(),
          'searcher_page': (_) => const SearcherPage()
        },
      ),
    );
  }
}
