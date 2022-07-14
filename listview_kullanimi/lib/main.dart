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
      body:ListView(
        children: [
          ListTile(
            leading:Icon(Icons.sunny),
            title: Text("Güneş"),
            subtitle: Text("Güneş Alt Başlık"),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            textColor: Colors.amber,
            iconColor: Colors.amber,
            selectedColor: Colors.lightBlue,
            tileColor: Colors.red,
            onTap: (){

            },
          )
        ],

      ),
    );
  }
}
