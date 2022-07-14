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
          children: <Widget>[
            PopupMenuButton(
              child: Icon(Icons.open_with),
              color: Colors.amber,
              itemBuilder: (context)=>[
                PopupMenuItem(
                  value: 1,
                  child: Text("Sil"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Güncelle"),
                ),
              ],
              onCanceled: (){
                print("olmadı");
              },
              onSelected: (menuItemValue){
                if(menuItemValue==1){
                  print("Sil Seçildi");
                }
                if(menuItemValue==2){
                  print("Güncelle Seçildi");
                }
              },
            )
          ],
        ),
      ),

    );
  }
}
