import 'package:flutter/material.dart';
import 'package:gridview_builder_kullanimi/detaySayfa.dart';

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

  var meyveler=["Elma","Muz","Armut","Kivi","Portakal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/1
        ),
        itemCount: meyveler.length,
        itemBuilder: (context,indeks){
          return GestureDetector(
            onTap:(){
              //print("${meyveler[indeks]} tıklandı");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetaySayfa(meyveAdi: meyveler[indeks])));
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(

                  children: [
                    Text(meyveler[indeks]),
                    Spacer(),
                    
                    TextButton(
                      child: Text("Ülke Seç",style: TextStyle(color: Colors.amber),),
                      onPressed:(){
                        print("${meyveler[indeks]} tıklandı");
                      },
                    ),
                    PopupMenuButton(
                      child: Icon(Icons.more_vert),
                      itemBuilder: (context)=>[
                        PopupMenuItem(value: 1, child: Text("Sil"),),
                        PopupMenuItem(value: 2, child: Text("GÜncelle"),),
                      ],
                      onSelected:(menuItemValue){
                        if(menuItemValue==1){
                          print("${meyveler[indeks]} silindi");
                        }
                        if(menuItemValue==2){
                          print("${meyveler[indeks]} Güncellendi");
                        }
                      },
                      onCanceled:(){

                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },

      )
    );
  }
}
