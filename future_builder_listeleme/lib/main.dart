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

  Future<List<String>> VerileriGetir() async{
    var meyveler=["Elma","Muz","Kestane"];
    return meyveler;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:FutureBuilder<List<String>>(
        future: VerileriGetir(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var meyveler=snapshot.data;
            return ListView.builder(
              itemCount: meyveler!.length,
              itemBuilder: (context,indeks){
                return SizedBox(
                  height: 100,
                  child: Card(
                    child: Row(
                      children: [
                        Text(meyveler[indeks]),
                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return Center();
          }
        },
      ),
    );
  }
}
