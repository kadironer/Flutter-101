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

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Column(
        children:[
          Padding(
            padding: EdgeInsets.only(top:ekranYuksekligi/100),
            child: SizedBox(
              width: 200,
                height: 100,
                child: Image.asset("resimler/resim.jpg")
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10.0,),
            child: Container(width:ekranGenisligi,height:ekranYuksekligi/10,color: Colors.red,),
          ),
          Text("Merhaba",style: TextStyle(fontSize: ekranGenisligi/10,)),
        ],


      )
    );
  }
}
