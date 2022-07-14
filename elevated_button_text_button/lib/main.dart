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
      home: const MyHomePage(title: 'Elevated & Text Button'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
              ),
              onPressed:(){
                print("Elevated Button Tıklandı");
              },
            ),
            TextButton(
              child: Text("Text Button",
                style:TextStyle(
                  color: Colors.deepOrange,
                  backgroundColor: Colors.blue,
              ),
              ),
              onPressed:(){
                print("Text Button Tıklandı");
              },
            ),

            ],
        ),
      ),

    );
  }
}
