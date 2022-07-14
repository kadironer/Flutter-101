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

  var tfController=TextEditingController();

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
              child: Text("Alert Dialog"),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Uyarı"),
                      content: Text("Hatalı Giriş"),
                      actions: [
                        TextButton(
                          child: Text("İptal Et"),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: Text("Devam et"),
                          onPressed: (){

                          },
                        ),
                      ],
                    );
                }
                );
              },
            ),

            ElevatedButton(
              child: Text("Alert Dialog"),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Uyarı"),
                        backgroundColor: Colors.amber,
                        content: SizedBox(


                          child: Column(
                            children: [
                              TextField(
                                controller: tfController,
                                decoration: InputDecoration(
                                  label: Text("Veri Gir"),
                                ),
                              )
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: Text("İptal Et", style: TextStyle(color: Colors.white),),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text("Devam et"),
                            onPressed: (){

                            },
                          ),
                        ],
                      );
                    }
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}
