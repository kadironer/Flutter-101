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

  var formkey=GlobalKey<FormState>();
  var tfKullaniciAdi=TextEditingController();
  var tfSifre=TextEditingController();
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
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: tfKullaniciAdi,
                    decoration: InputDecoration(
                      label: Text("Kullanıcı Adı"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    validator: (tfGirdisi){
                      if(tfGirdisi!.isEmpty){
                        return "Kullanıcı adı giriniz";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: tfSifre,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Şifre"),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     )
                    ),
                    validator: (tfGirdisi){
                      if(tfGirdisi!.isEmpty){
                        return "Şifre giriniz";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    child: Text("Giriş yap"),
                    onPressed: (){
                      bool kontrolSonuc=formkey.currentState!.validate();
                      if(kontrolSonuc){
                        String ka=tfKullaniciAdi.text;
                        String sifre=tfSifre.text;
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
