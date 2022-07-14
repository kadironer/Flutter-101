

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
        backgroundColor: Colors.redAccent,
        centerTitle: false,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 25,
                  height: 25,
                  child: Image.asset("images/education.png")),
            ],
          ),
        ),
        leading: IconButton(
          tooltip: "Menü",
          icon: Icon(Icons.dehaze_rounded),
          onPressed:(){
          },
        ),
        actions: [

          TextButton(onPressed:(){}, child: Text("Çıkış",)),
          IconButton(
            tooltip: "info",
            icon: Icon(Icons.info_outline),
            onPressed:(){
            },
          ),
          IconButton(
            tooltip: "popup",
            icon: Icon(Icons.more_vert),
            onPressed:(){
            },
          ),
        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),

    );
  }
}
