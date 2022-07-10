// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn_again_kong/Colors.dart';
import 'package:learn_again_kong/FutureBox.dart';
import 'package:uno/uno.dart';
import 'ShowData.dart';

void main(List<String> args) {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.pink),
        title: "My app",
        home: const MyStateFull());
  }
}

class MyStateFull extends StatefulWidget {
  const MyStateFull({Key? key}) : super(key: key);

  @override
  State<MyStateFull> createState() => _MyStateFullState();
}

class _MyStateFullState extends State<MyStateFull> {
  Future? _future;
  Future? _future2;
  String menu3 = "Loading";
  final uno = Uno();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = setData();
    _future2 = setData();
  }

  Future<String> setData() async {
    var res = await uno.get('https://api.chucknorris.io/jokes/random');
    print(res.status);
    var data = res.data;
    return data['value'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Chucknorris Api",
            style: TextStyle(fontSize: 24),
          ),
        ),
        backgroundColor: ColorColletion().primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            futureBox(_future!),
            futureBox(_future2!),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.extended(
            label: Text(
              "change",
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Color.fromRGBO(255, 183, 197, 1),
            onPressed: () => setState(() {
              _future = setData();
            }),
          ),
          FloatingActionButton.extended(
            label: Text(
              "change",
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Color.fromRGBO(255, 183, 197, 1),
            onPressed: () {
              setState(() {
                _future2 = setData();
              });
            },
          ),
        ],
      ),
    );
  }
}
