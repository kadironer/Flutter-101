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
      body: LayoutBuilder(
       builder: (BuildContext context,BoxConstraints constraints){
         if(constraints.maxWidth<600){
           return TelefonTasarim();
         }
         else{
           return TabletTasarim();
         }
       }
      )
    );
  }
}

class TabletTasarim extends StatelessWidget {
  const TabletTasarim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/stevejobs@2x.png"),
          Text("Steve Jobs",style: TextStyle(fontSize: 30.0),),
        ],
      ),

    );
  }
}

class TelefonTasarim extends StatelessWidget {
  const TelefonTasarim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/stevejobs@1x.png"),
          Text("Steve Jobs",style: TextStyle(fontSize: 20.0),),
        ],
      ),

    );
  }
}

