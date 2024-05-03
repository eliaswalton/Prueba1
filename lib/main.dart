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
  
  void _changeColor(){
    setState(() {
      _currentColor = (_currentColor == Colors.blue) ? Colors.red : Colors.blue;
    });
  }

  @override 
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Changing Widget")
      ),
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


