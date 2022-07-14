import 'package:drawer_kullanimi/sayfa1.dart';
import 'package:drawer_kullanimi/sayfa2.dart';
import 'package:drawer_kullanimi/sayfa3.dart';
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
        primarySwatch: Colors.amber,
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

  var sayfalarListe=[Sayfa1(),Sayfa2(),Sayfa3()];
  int secilenIndeks=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: sayfalarListe[secilenIndeks],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Anasayfa"),
              decoration: BoxDecoration(
                color: Colors.amber
              ),
            ),
            ListTile(
              title: Text("Sayfa1"),
              onTap:(){
                setState(() {
                  secilenIndeks=0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Sayfa2"),
              onTap:(){
                setState(() {
                  secilenIndeks=1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.looks_3),
              title: Text("Sayfa3"),
              onTap:(){
                setState(() {
                  secilenIndeks=2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
