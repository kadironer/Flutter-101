import 'package:flutter/material.dart';
import 'package:tabs_kullanimi/sayfa1.dart';
import 'package:tabs_kullanimi/sayfa2.dart';
import 'package:tabs_kullanimi/sayfa3.dart';

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
      home: const MyHomePage(title: 'Tabs Kullanımı'),
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(text: "Bir",),
              Tab(icon: Icon(Icons.looks_two),),
              Tab(text: "Üç",icon: Icon(Icons.looks_3),),
            ],
            indicatorColor: Colors.red,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 20),
            ),


            labelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            Sayfa1(),
            Sayfa2(),
            Sayfa3(),
          ],
        ),
      ),
    );
  }
}
