import 'package:bottom_navigation_bar_kullanimi/sayfa1.dart';
import 'package:bottom_navigation_bar_kullanimi/sayfa2.dart';
import 'package:bottom_navigation_bar_kullanimi/sayfa3.dart';
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

  var sayfaListesi=[Sayfa1(),Sayfa2(),Sayfa3()];
  int secilenIndeks=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: "Bir"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two),
              label: "İki"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3),
              label: "Üç"
          ),
        ],
        selectedItemColor: Colors.amber,
        backgroundColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: secilenIndeks,
        onTap: (indeks){
          setState(() {
            secilenIndeks=indeks;
          });
        },
      ),
    );
  }
}
