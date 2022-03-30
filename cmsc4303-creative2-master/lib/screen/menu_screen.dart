import 'package:creative2/screen/aboutus_screen.dart';
import 'package:creative2/screen/contactus_screen.dart';
import 'package:creative2/screen/ordering_screen.dart';
import 'package:creative2/screen/routes_screen.dart';
import 'package:creative2/screen/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:creative2/model/menu.dart';

class MenuScreen extends StatefulWidget {
  static const routeName = 'menuScreen';

  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<MenuScreen> {
  _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Items'),
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
      body: SingleChildScrollView(
        child: Column(
          children: con.getMenuList(),
        ),
      ),
    );
  }
}

class _Controller {
  _MenuState state;
  _Controller(this.state);

  List<Widget> getMenuList() {
    return menuItemList.map((item) {
      return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        color: Colors.orangeAccent[400],
        elevation: 15.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image.network(
                    item.imageURL,
                    height: 200.0,
                    width: 300.0,
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                item.name,
                style: Theme.of(state.context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 15.0, bottom: 10.0),
              child: Text(
                "\$" + item.price,
                style: Theme.of(state.context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0, bottom: 10.0),
              child: Text(
                item.description,
                style: Theme.of(state.context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }).toList();
  }
}
//-----------Second Formatting Type
//             Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.all(10.0),
//                     child: Image.network(
//                       item.imageURL,
//                       height: 200.0,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             Column(children: [
//               Container(
//                 child: Text(
//                   item.name,
//                   style: Theme.of(state.context).textTheme.headline5,
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
//                 child: Text(
//                   "\$" + item.price,
//                   style: Theme.of(state.context).textTheme.headline6,
//                 ),
//               ),
//             ]),
//             Container(
//               padding: EdgeInsets.only(left: 15.0, bottom: 10.0),
//               child: Text(
//                 item.description,
//                 style: Theme.of(state.context).textTheme.headline6,
//               ),
//             ),
//           ],
//         ),
//       );
//     }).toList();
//   }
// }
