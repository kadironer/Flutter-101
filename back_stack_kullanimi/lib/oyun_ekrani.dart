import 'package:back_stack_kullanimi/bitis_ekrani.dart';
import 'package:flutter/material.dart';

class oyunEkrani extends StatefulWidget {
  const oyunEkrani({Key? key}) : super(key: key);

  @override
  State<oyunEkrani> createState() => _oyunEkraniState();
}

class _oyunEkraniState extends State<oyunEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Oyuna Ekranı"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> bitisEkrani()));
                  },
                  child: Text("Oyunu Bitir"),
                ),
              ],

            )
        )
    );
  }
}



