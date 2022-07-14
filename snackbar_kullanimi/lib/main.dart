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
            ElevatedButton(
              child: Text("Varsayılan"),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:Text("Merhaba"),),
                );
              },

            ),
            ElevatedButton(
              child: Text("Uyarılı"),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:Text("İnternet yok"),
                    action: SnackBarAction(
                      label: "Tekrar Deneyiniz!",
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content:Text("Olmadı"),),
                        );
                      }
                    ),
                  ),
                );
              },
            ),

            ElevatedButton(
              child: Text("Uyarılı"),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:Text("İnternet yok",
                      style:TextStyle(
                        color: Colors.black,
                      ) ,
                    ),
                    backgroundColor: Colors.amber,
                    duration: Duration(seconds: 1),

                    action: SnackBarAction(
                        label: "Tekrar Deneyiniz!",
                        textColor: Colors.deepOrange,
                        onPressed: (){
                        }
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}
