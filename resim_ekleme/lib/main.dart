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
      body: Column(
        children: [
              Padding(
                padding: const EdgeInsets.only(top:15),
                child: SizedBox(
                  width: 200,
                    height: 350,
                    child: Image.asset("resimler/kadir.jpg")
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Container(width: 50,height: 50,color: Colors.red,),
          ),
        ],
      )
    );
  }
}
