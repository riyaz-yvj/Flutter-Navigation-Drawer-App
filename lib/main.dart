import 'package:flutter/material.dart';
import 'new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Yash Vardhan Jain'),
              accountEmail: Text('riyaz.yvj@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text('Y'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('P'),
                ),
              ],
            ),
            ListTile(
              title: Text('Page One'),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_)=>NewPage("Page One"),
                ));
              },
            ),
            ListTile(
              title: Text('Page Two'),
              trailing: Icon(Icons.arrow_circle_down_outlined),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_)=>NewPage("Page Two"),
                ));
              }
            ),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}

