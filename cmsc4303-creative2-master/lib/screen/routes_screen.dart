import 'package:creative2/screen/menu_screen.dart';
import 'package:creative2/screen/ordering_screen.dart';
import 'package:flutter/material.dart';
import 'package:creative2/screen/aboutus_screen.dart';
import 'package:creative2/screen/contactus_screen.dart';
import 'package:creative2/screen/start_screen.dart';

class RoutesScreen extends StatelessWidget {
  static const routeName = '/routesScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Areas of Service'),
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
      body: ListView(
          //Copy Image Address
          children: [
            Text(
              'Norman Area',
              style: Theme.of(context).textTheme.headline4,
            ),
            Divider(),
            Container(
              // width: MediaQuery.of(context).size.width,
              child: Image.asset('images/norman.jpeg'),
            ),
            Text(
              'Moore Area',
              style: Theme.of(context).textTheme.headline4,
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.orange[900],
              child: Image.asset('images/moore.jpeg'),
            ),
            Text(
              'Edmond Area',
              style: Theme.of(context).textTheme.headline4,
            ),
            Divider(),
            Container(
              color: Colors.orangeAccent[100],
              child: Image.asset('images/edmond.jpeg'),
            ),
          ]),
    );
  }
}
