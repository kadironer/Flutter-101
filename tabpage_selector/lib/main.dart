import 'package:flutter/material.dart';

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
                TabBarView(
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text("You Can Evaluate Yourself By Running Quizzes!")
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text("You Can Evaluate Yourself By Running Quizzes!")
                        ],
                      ),
                    ],
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