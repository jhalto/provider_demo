import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    },);
  }
  @override
  Widget build(BuildContext context) {
    print("build");
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            print("only this");
            return Text(
              value.count.toString(),
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            );
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
