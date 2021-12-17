import 'package:flutter/material.dart';

class premade extends StatefulWidget {
  const premade({Key? key}) : super(key: key);

  @override
  _premadeState createState() => _premadeState();
}

class _premadeState extends State<premade> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    var editingController;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child : AppBar(
                leading: Icon(Icons.home),
                title: Text("MakeMyCake"),
                centerTitle: true,
                backgroundColor:Color.fromRGBO(118, 60, 0, 10),
              )),
          body: Container(
              child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value){

                        },
                        controller : editingController,
                        decoration: InputDecoration(
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                      ),
                    )
                  ]
              )
          )
      ),
    );
  }
}
