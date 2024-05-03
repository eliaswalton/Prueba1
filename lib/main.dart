import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Color Changing Widget",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ColorChangerWidget(),
    );
  }
}

class ColorChangerWidget extends StatefulWidget{
  @override
  _ColorChangerWidgetState createState() => _ColorChangerWidgetState();
}


class _ColorChangerWidgetState extends State<ColorChangerWidget>{
  Color _currentColor = Colors.blue;
  
  //Este es el metodo para cambiar el color al ser presionado
  void _changeColor(){
    setState(() {
      //Aqui se cambia el color actual de azul a rojo y viceversa
      _currentColor = (_currentColor == Colors.blue) ? Colors.red : Colors.blue;
    });
  }

  @override 
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("El Widget que Cambia de Color") //Titulo de la aplicacion
      ),
      //Aqui se crea un cuerpo (el boton en este caso), se aplica el tamaño, fuente, color de la letra, etc, y se llaman
      //los metodos que lo hacen funcionar
      body: Center( 
        child: GestureDetector(
          onTap: _changeColor,
          child: Container(
            width: 300,
            height: 100,
            color: _currentColor,
            child: Center(child: Text("Presiona para cambiar el color",
            style: TextStyle(color: Colors.white,
            fontSize: 18,),),)
          ),) ,)
    );
  }
}


