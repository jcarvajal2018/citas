import 'package:citas/main_layout.dart';
import 'package:flutter/material.dart';
import 'utils/config.dart';
import 'screens/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this is for push navegator
  static final navigatorKey= GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //pre-define input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
      ),
      initialRoute: '/',
      routes: {
        //this is initial route of the app
        //which is auth page (login and sign up)
        '/':(context)=>const AuthPage(),
        //this is for main layout after login 
        'main': (context) => const MainLayout(),
      },
    );
  }
}


