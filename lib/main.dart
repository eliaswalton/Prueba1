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



