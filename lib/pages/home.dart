import 'package:flutter/material.dart';
//TabBar
/*
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Column(
        children: <Widget> [
          new Icon(Icons.home, size: 35, color: Colors.amberAccent,),
          new Text("Primer Tab")
        ],
      ),
    );
  }
}
 */

//back
/*
class uno extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              new Icon(Icons.home, size: 160.0, color: Colors.grey,),
              new Text("First", style: new TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
 */

//Bottom Navigation Bar
/*
class uno extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Container(
        child: new Center(
          child: new RaisedButton(
            child: new Text("More"),
            onPressed: (){
              Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new Second())
              );
            },
          ),
        ),
      ),
    );
  }
}

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("More Info"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: new Text("Go back!!"),
        ),
      ),
    );
  }
}
 */


//home Drawer
/*
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>{
  Drawer _getDrawer(BuildContext context){
  var header = new DrawerHeader(child: new Text("Ajustes"));
  var info = new AboutListTile(
    child: new Text("Informacion app"),
    applicationIcon: new Icon(Icons.favorite),
    applicationVersion: "v1.0.0",
    applicationName: "Demo Drawer",
    icon:  new Icon(Icons.info),
  );
  ListTile _getItem (Icon icon, String description, String route){
    return new ListTile(
      leading: icon,
      title: new Text(description),
      onTap: (){
        setState(() {
          Navigator.of(context).pushNamed(route);
        });
      },
    );
  }

  ListView listView = new ListView(children: <Widget> [
    header,
    _getItem(new Icon(Icons.security), "Video", "/video"),
    _getItem(new Icon(Icons.home), "Home", "/"),
    _getItem(new Icon(Icons.contact_mail), "Contact", "/contact"),
    info
  ]);

  return new Drawer(
    child: listView,
    );
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Drawer"),
      ),
      drawer:  _getDrawer(context),
    );
  }
}
 */