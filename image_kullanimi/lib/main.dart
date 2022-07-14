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

  String resim="inception.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder:"Images/resim1.jpg",
              image: ("http://kasimadalan.pe.hu/filmler/resimler/$resim"),
            ),
            ElevatedButton(
              child: Text("Resim 1"),
              onPressed:(){
                setState(() {
                  resim="inception.png";
                });
              },
            ),
            ElevatedButton(
              child: Text("Resim 2"),
              onPressed:(){
                setState(() {
                  resim="interstellar.png";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
