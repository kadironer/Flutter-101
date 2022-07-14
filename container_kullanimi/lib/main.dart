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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const MyHomePage(title: 'Container Kullanımı'),
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
        body: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top:15.0,left: 5.0 ),
              /*margin: const EdgeInsets.All(10.0), HER TARAFTAN BOŞLUK VERİR.*/
              width: 100,
              height: 100,

              child: Text("Kadir Öner"),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.amber,
                  width: 5.0,

                ),
                //borderRadius: BorderRadius.all(Radius.circular(5.0)) TÜM KENARLARA RADİUS UYGULAR
                borderRadius: BorderRadius.only(topLeft:Radius.circular(25.0),bottomRight:Radius.circular(25.0))
              ),
            )
          ],
        )
    );
  }
}
