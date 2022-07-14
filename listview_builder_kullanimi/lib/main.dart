import 'package:flutter/material.dart';
import 'package:listview_builder_kullanimi/detaySayffa.dart';

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
  var meyveler=["Elma","Muz","Armut","Kivi","Portakal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: meyveler.length,
          itemBuilder: (context,indeks){
            return GestureDetector(
              onTap:(){
                //print("${meyveler[indeks]} tıklandı");
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetaySayfa(meyveAdi: meyveler[indeks],)));

              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            print("${meyveler[indeks]} tıklandı");
                          },
                            child: Text(meyveler[indeks])),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
