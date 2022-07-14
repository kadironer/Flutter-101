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
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Time & Date Picker Kullanımı'),
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
    var tfSaat=TextEditingController();
    var tfTarih=TextEditingController();

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
              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  controller: tfSaat,
                  decoration: InputDecoration(
                    labelText: "Saat Giriniz",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                    )
                  ),
                  onTap:(){
                    showTimePicker(
                      context: context,

                      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                    ).then((alinanSaat){
                      setState(() {
                        tfSaat.text="${alinanSaat!.hour}:${alinanSaat.minute}";
                      });
                    });
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  controller: tfTarih,
                  decoration: InputDecoration(
                      labelText: "Tarih Giriniz",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0))
                      )
                  ),
                  onTap:(){
                    showDatePicker(

                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1940),
                      lastDate: DateTime(2050),

                    ).then((alinanTarih){
                      setState(() {
                        tfTarih.text="${alinanTarih!.day}/${alinanTarih.month}/${alinanTarih.year}";
                      });
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
