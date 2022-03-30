import 'package:creative2/screen/menu_screen.dart';
import 'package:creative2/screen/routes_screen.dart';
import 'package:flutter/material.dart';
import 'package:creative2/screen/aboutus_screen.dart';
import 'package:creative2/screen/contactus_screen.dart';
import 'package:creative2/screen/start_screen.dart';
import 'package:creative2/model/menu.dart';
import 'package:flutter/foundation.dart';

class OrderingScreen extends StatefulWidget {
  static const routeName = '/orderingScreen';
  @override
  State<StatefulWidget> createState() {
    return _OrderingScreenState();
  }
}

class _OrderingScreenState extends State<OrderingScreen> {
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
        title: Text('Place Your Order'),
        actions: con.selected != null
            ? [
                IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: con.delete,
                  tooltip: 'Remove the selected item',
                ),
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: con.cancel,
                ),
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: null, //con.add
                  tooltip: 'Non-Functional',
                ),
              ]
            : null,
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
      body: ListView.builder(
        itemCount: menuItemList.length,
        itemBuilder: con.getTile,
      ),
    );
  }
}

class _Controller {
  _OrderingScreenState state;
  _Controller(this.state);
  List<int> selected;
  final Color selectedColor = Colors.orange[200];
  final Color unselectedColor = Colors.orange;

  Widget getTile(BuildContext context, int index) {
    return Container(
      color: (selected != null && selected.indexOf(index) >= 0)
          ? selectedColor
          : unselectedColor,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        title: Text(menuItemList[index].name),
        subtitle: Text(menuItemList[index].description),
        onTap: () {
          _onTap(context, index);
        },
        onLongPress: () {
          _longPress(context, index);
        },
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    if (selected == null) {
      showDetails(context, menuItemList[index]);
    } else {
      state.render(() {
        if (selected.indexOf(index) < 0) {
          selected.add(index);
        } else {
          //cancel the selection
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void _longPress(BuildContext context, int index) {
    if (selected == null) {
      state.render(() {
        selected = [];
        selected.add(index);
      });
    } else {
      state.render(() {
        if (selected.indexOf(index) < 0) {
          selected.add(index);
        } else {
          //cancel the selection
          selected.removeWhere((value) => value == index);
          if (selected.length == 0) selected = null;
        }
      });
    }
  }

  void add() {}

  void delete() {
    selected.sort(); //Ascending order
    state.render(() {
      for (int i = selected.length - 1; i >= 0; i--) {
        menuItemList.removeAt(selected[i]);
      }
      selected = null;
    });
  }

  void cancel() {
    state.render(() => selected = null);
  }

  void showDetails(BuildContext context, MenuItem item) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.orange,
        title: Image.network(item.imageURL),
        actions: [
          FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Close',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
        content: Card(
            color: Colors.white,
            elevation: 15.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      item.name,
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Price: \$' + item.price,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
