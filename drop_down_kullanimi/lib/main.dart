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
        primarySwatch: Colors.deepOrange,
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

  var sebzelerListe= <String>[];
  String secilenSebze="Seçiniz";

  @override
  void initState() {
    super.initState();
    sebzelerListe.add("Seçiniz");
    sebzelerListe.add("Domates");
    sebzelerListe.add("Salatalık");
    sebzelerListe.add("Patlıcan");
    sebzelerListe.add("Kabak");
    sebzelerListe.add("Limon");
  }

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
            DropdownButton<String>(
              value: secilenSebze,
              items:sebzelerListe.map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text("$value"),
                  );
                }).toList(),
                     icon: Icon(Icons.arrow_drop_down),
                     onChanged:(String? secilenVeri){
                          setState(() {
                            secilenSebze=secilenVeri!;
                          });
                     },
              ),


          ],
        ),
      ),
    );
  }
}
