import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {

  String meyveAdi;
  DetaySayfa({required this.meyveAdi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.meyveAdi,
              style: TextStyle(color: Colors.amber, fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
