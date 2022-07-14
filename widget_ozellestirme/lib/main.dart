import 'package:flutter/cupertino.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            maviKare(),
            Padding(
              padding: const EdgeInsets.all(5),
              child: kirmiziKare(),


            ),
            metinOzel("Merhaba",45.0)
          ],
        ),
      )

    );
  }
}


class maviKare extends StatelessWidget {
  const maviKare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}
class kirmiziKare extends StatelessWidget {
  const kirmiziKare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}

class metinOzel extends StatelessWidget {

  String icerik;
  double fontsize;

  metinOzel(this.icerik,this.fontsize);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: fontsize),);
  }
}

