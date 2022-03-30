import 'package:creative2/screen/menu_screen.dart';
import 'package:creative2/screen/ordering_screen.dart';
import 'package:flutter/material.dart';
import 'package:creative2/screen/contactus_screen.dart';
import 'package:creative2/screen/routes_screen.dart';
import 'package:creative2/screen/start_screen.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = '/aboutUsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent[700],
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fkiwifarms.net%2Fattachments%2F63-635763_png-autism-puzzle-piece-png.1610662%2F&f=1&nofb=1'),
                          radius: 50.0,
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'AU-sume Food',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight + Alignment(0, .3),
                      child: Text(
                        'Food Truck',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pushNamed(context, StartScreen.routeName),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('About Us'),
              onTap: () => Navigator.pushNamed(context, AboutUsScreen.routeName),
            ),
            ListTile(
              leading: Icon(Icons.restaurant_menu),
              title: Text('Menu'),
              onTap: () => Navigator.pushNamed(context, MenuScreen.routeName),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Place Order'),
              onTap: () => Navigator.pushNamed(context, OrderingScreen.routeName),
            ),
            ListTile(
              leading: Icon(Icons.airport_shuttle),
              title: Text('Routes'),
              onTap: () => Navigator.pushNamed(context, RoutesScreen.routeName),
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Contact Us'),
                onTap: () => Navigator.pushNamed(context, ContactUsScreen.routeName)),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.zero, //EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: ClipOval(
                    child: Image.asset('images/cooks.jpeg'),
                  ),
                ),
                Divider(height: 25.0, thickness: 5.0, color: Colors.orangeAccent[700]),
                Text(
                  'Meet the Cooks',
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '\n The Sandini Family\n',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  width: 250.0,
                  child: Text(
                      ' We are a very unique family of 4, that has always worked well together.'
                      ' Terece and I have been in and out of the restaurant business for many years.'
                      ' We developed a knack and passion for cooking, and our children have as well.'
                      ' Especially Elijah, our son, who is on the spectrum and can recite many family recipes by heart.\n\n'),
                ),
                SizedBox(
                  width: 300.0,
                  child: Text(
                    ' We hope you try us out and help us make our passion yours.',
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
