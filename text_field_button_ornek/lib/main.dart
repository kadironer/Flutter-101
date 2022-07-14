import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
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

      home:  MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding:  EdgeInsets.only(top:33.0,bottom: 18.0),
              child: Center(
                child: Text("Giriş Yap",
                    style:TextStyle(
                      color: Color(0xFF47AC20),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          Container(
            child: Text("Giriş yapmak için bilgilerinizi ekleyin",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF3d3d3f),
              ),
            ),
          )

        ],
      ),

    );
  }
}
