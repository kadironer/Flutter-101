import 'package:flutter/material.dart';
import 'package:tabpage_selector/sayfa1.dart';

void main() => runApp(const SimplePageSelector());

class SimplePageSelector extends StatefulWidget{
  const SimplePageSelector({Key? Key}) : super (key: Key);
  @override
  _SimplePageSelectorState createState() => _SimplePageSelectorState();

}

class _SimplePageSelectorState extends State<SimplePageSelector> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Simple Page Selector"),
        ),
        body: DefaultTabController(
          length:3,
          child: Builder(
            builder: (BuildContext context) => Column(
              children: <Widget>[
                Container(
                  width:MediaQuery.of(context).size.width,
                  child: TabBarView(
                    children: <Widget>[
                      Sayfa1(),
                      Column(
                        children: const <Widget>[
                          Icon(Icons.chrome_reader_mode),
                          Text("You Can Run Codes And See Them!")
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text("You Can Evaluate Yourself By Running Quizzes!")
                        ],
                      ),
                    ],
                  ),
                ),
                const TabPageSelector(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}