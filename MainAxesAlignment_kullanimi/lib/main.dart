import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Row(
        //mainAxisAlignment: MainAxisAlignment.start, Varsayılan Hizalama
        //mainAxisAlignment: MainAxisAlignment.end, En Sona Hizalama
        //mainAxisAlignment: MainAxisAlignment.center, Ortaya Hizalar
        //mainAxisAlignment: MainAxisAlignment.spaceBetween, Arada Boşluk olacak şekilde hizalar
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//Arada Boşluk olacak şekilde hizalar
        children: [
          Container(width:100,height: 100, color: Colors.amber,),
          Container(width:100,height: 100, color: Colors.blue,),
          Container(width:100,height: 100, color: Colors.red,),
        ],
      )
    );
  }
}
