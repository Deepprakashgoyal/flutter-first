import 'package:first/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Chage This Text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/bg.jpg"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Please enter something here",
                      labelText: "Your Name",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      // ignore: missing_required_param

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
