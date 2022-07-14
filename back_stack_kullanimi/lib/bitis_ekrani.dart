import 'package:back_stack_kullanimi/main.dart';
import 'package:flutter/material.dart';

class bitisEkrani extends StatefulWidget {
  const bitisEkrani({Key? key}) : super(key: key);

  @override
  State<bitisEkrani> createState() => _bitisEkraniState();
}

class _bitisEkraniState extends State<bitisEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Back Stack Kullanimi"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).popUntil((route) => route.isFirst);

                  },
                  child: Text("Oyun Bitti"),
                ),
              ],

            )
        )
    );
  }
}


