import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
              child: Image.asset('assets/nature1.jpg')
          ),
          Expanded(
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(20),
              child: Text('1'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              child: Text('2'),),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(20),
              child: Text('3'),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('klik'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}



