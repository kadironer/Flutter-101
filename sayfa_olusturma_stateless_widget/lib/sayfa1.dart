import 'package:flutter/material.dart';

class sayfa1 extends StatelessWidget {
  const sayfa1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Yeni Sayfa"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 100, height: 100,color:Colors.deepOrangeAccent,),
                Text("Merhaba"),

              ],
            )
        )
    );
  }
}
