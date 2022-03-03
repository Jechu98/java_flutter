import 'package:flutter/material.dart';

/*void main(){
  runApp(
  new Center(
     child: new Directionality(
      textDirection: TextDirection.ltr,
        child: new Text("Hello Word")
      )
  )
  );
}**/
/*void main(){
  runApp(
    new MaterialApp(
      title: "Test", //Titulo de la aplicacion
      home: new Scaffold(  //Crea un cuerpo
        appBar: new AppBar(
          title: new Text("This is the first")
        ),
        body: new Container(
          child: new Center(
            child: new Text("Hola NeNa"),
          ),
        )    
      )
    )
  );
}**/

//StatelessWidget Inmutables
/*
void main(){
  runApp(new MaterialApp(
    home: MyApp(),//Indicar cual es la clase para manejar el widget
  ));
}

class MyApp extends StatelessWidget{//El statelesswidget son inmutables, este contenido se queda inalterado
  @override
  Widget build(BuildContext context){
    final double iconSize = 40.0;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Statelss Widtget"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(//Tiene una propiedad que es children y recibe una coleccion de widgets
            crossAxisAlignment: CrossAxisAlignment.stretch,//Utilizatodo el ancho
            children: <Widget>[
              /*new Text("Flutter"),
              new Text("es"),
              new Text("Amazing")**/
              new MyCard(title: new Text("Favorite", style: new TextStyle(color: Colors.green, fontSize: 30.0),),
                icon: new Icon(Icons.favorite, size: iconSize, color: Colors.blue,),),
              new MyCard(title: new Text("Tune"),
                icon: new Icon(Icons.tune, size: iconSize, color: Colors.green,),),
              new MyCard(title: new Text("r_mobiledata"),
                icon: new Icon(Icons.r_mobiledata, size: iconSize, color: Colors.amber,),),
            ],
          ),//child anida widgets al contenedor principal
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  //Variables
  final Widget title;
  final Widget icon;
  MyCard({required this.title,required this.icon});//constructor que recibe los parametros

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: const EdgeInsets.only(bottom: 3.0),//Solo en la parte de abajo
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[this.title,this.icon],
          ),
        ),
      ),
    );
  }
}
*/

//StatefulWidget Mutables - Puede cambiar su estado a lo largo del desarrollo y se renderiza en la aplicacion
/*
void main(){
  runApp(new MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget{
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton>{

  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter','is','amazing'];
  void onPressButton(){
    setState(() {// se actualiza por esta funcion
      flutterText = collections[index];
      //index = index < 2 ? index + 1 : 0;//es lo mismo que abajo (? en este caso si) (: en caso contrario)
      if (index < 2) {
        index = index + 1;
      }else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(flutterText, style: new TextStyle(fontSize: 40.0),),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(//Boton
                child: new Text("Reload", style: new TextStyle(color: Colors.white),),
                color: Colors.green,
                onPressed: onPressButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

//Textfield
/*
void main(){
  runApp(new MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget{
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField>{
String inputValue = " ";
final TextEditingController controller = new TextEditingController();

void onSubmitted(String value){
  print(value);
  setState(() {
    inputValue = inputValue + "\n" + value;
    controller.text = " ";
  });
}

    @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("EditText widget"),
          backgroundColor: Colors.orange,
        ),
        body: new Container(
          child: new Center(
           child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(hintText: "Ingese el texto aquí"),
                  onSubmitted: (String value) {onSubmitted(value);},
                  controller: controller,
                ),
                new Text(inputValue, style: new TextStyle(fontSize: 30.0)),
                new Padding(padding: new EdgeInsets.all(10.0)),
              ],
            ),
          ),
        ),
      );
    }
}*/

//AlertDialog
/*
void main(){
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}
class MyDialog extends StatefulWidget{
  @override
  _MyDialogState createState() => new _MyDialogState();
}

enum DialogAction{
  yes,
  no
}

class _MyDialogState extends State<MyDialog>{
  String _inputValue = " ";

  void _alertResult(DialogAction action){
    print("Your selection is $action");
  }

  void _showAlert(String value){
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget> [
        new FlatButton(onPressed:() {_alertResult(DialogAction.yes);}, child: new Text("si"),),
        new FlatButton(onPressed:() {_alertResult(DialogAction.no);}, child: new Text("no"),),
      ],
    );
    showDialog(context: context, builder:(context)=> dialog);
  }

  void _onChanged(String value){
    setState(() {
      _inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Alert Dialog"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Insert your text"
                ),
                onChanged: (String valu) {_onChanged(valu);},
              ),
              new RaisedButton(
                child: new Text("Show Alert"),
                onPressed: () {_showAlert(_inputValue);},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */

//Image
void main(){
  runApp(new MaterialApp(
      home: Screen(),
  ));
}
class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return new Scaffold(
     appBar: new AppBar(
       title:  new Text("Image"),
     ),
     body: new Center(
       child: new Container(
          width: 320,
         height: 320,
         color: Colors.orange,
         ),
       ),
   );
  }
}