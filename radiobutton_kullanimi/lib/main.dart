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
  int radioDeger=0;
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
            RadioListTile(
              title: Text("Erkek"),
              value: 1,
              groupValue: radioDeger,
              activeColor: Colors.lightBlueAccent,
              onChanged: (int? veri){
                print('Erkek Seçildi');
                setState(() {
                  radioDeger= veri!;
                });
              },
            ),
            RadioListTile(
              title: Text("Kız", style: TextStyle(
               color: Colors.pink
              ),
              ),
              value: 0,
              groupValue: radioDeger,
              activeColor: Colors.pink,
              onChanged: (int? veri){
                print('Kız Seçildi');
                setState(() {
                  radioDeger= veri!;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
