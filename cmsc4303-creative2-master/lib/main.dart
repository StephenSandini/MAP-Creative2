import 'package:creative2/screen/menu_screen.dart';
import 'package:creative2/screen/ordering_screen.dart';
import 'package:creative2/screen/routes_screen.dart';
import 'package:flutter/material.dart';
import 'package:creative2/screen/start_screen.dart';
import 'package:creative2/screen/aboutus_screen.dart';
import 'package:creative2/screen/contactus_screen.dart';

void main() {
  runApp(Creative2App());
}

class Creative2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Because of our use of Material Widgets. Material App Class is Used to Navigate between screens
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Can Define Customized Things Here
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Goldman',
        primaryColor: Colors.orangeAccent[700],
        dividerTheme: DividerThemeData(
          space: 5,
          thickness: 5.0,
          color: Colors.black,
        ),
        textTheme: TextTheme(
          //headline6: TextStyle(fontSize: 30.0, color: Colors.white),
          button: TextStyle(fontFamily: 'Goldman', fontSize: 28.0),
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        //Anonymous Function using Arrow Function.
        StartScreen.routeName: (context) => StartScreen(),
        AboutUsScreen.routeName: (context) => AboutUsScreen(),
        ContactUsScreen.routeName: (context) => ContactUsScreen(),
        RoutesScreen.routeName: (context) => RoutesScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        OrderingScreen.routeName: (context) => OrderingScreen(),
      },
    );
  }
}

Widget gotoStart(BuildContext context) {
  return StartScreen();
}
