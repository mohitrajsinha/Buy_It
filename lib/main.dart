import 'package:android_app/pages/cart_page.dart';
import 'package:android_app/pages/home_page.dart';
import 'package:android_app/pages/login_page.dart';
import 'package:android_app/utils/routes.dart';
import 'package:android_app/utils/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.LightTheme(context),
        darkTheme: MyTheme.DarkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: {
          "/": ((context) => LoginPage()),
          MyRoutes.homeroute: (context) => HomePage(),
          MyRoutes.loginroute: (context) => LoginPage(),
          MyRoutes.Cartroute: (context) => CartPage(),
        });
  }
}
