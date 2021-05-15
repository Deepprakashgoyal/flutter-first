import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "First App",
    home: HomePage()
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.lime,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            )
          ]
        )
      )
    );
  }
}