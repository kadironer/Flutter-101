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
      home: const MyHomePage(title: 'Switch Kullanımı'),
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

  bool switchkontrol=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
               Switch(
                value: switchkontrol,
                activeTrackColor: Colors.redAccent,
                activeColor: Colors.red,
                inactiveTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.amberAccent,

                onChanged: (deger){
                  setState(() {
                    switchkontrol=deger;
                  });
                  print("Durum: $deger");
                },
              ),
          ],
        ),
      ),
    );
  }
}
