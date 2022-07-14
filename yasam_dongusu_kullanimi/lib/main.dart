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
      home:  anasayfa(),
    );
  }
}

class anasayfa extends StatefulWidget {

  @override
  State<anasayfa> createState() => _anasayfaState();

}
class _anasayfaState extends State<anasayfa> with WidgetsBindingObserver{

  @override
  void initState() {
    super.initState();
    print("initState() Çalıştı");
    WidgetsBinding.instance!.addObserver(this);
  }
  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state==AppLifecycleState.inactive){
      print("inactive() Çalıştı");
    }
    if(state==AppLifecycleState.paused){
      print("Paused() Çalıştı");
    }
    if(state==AppLifecycleState.resumed){
      print("Resumed() Çalıştı");
    }
    if(state==AppLifecycleState.detached){
      print("Detached() Çalıştı");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build() çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(

    )
      )
    );
  }
}
