import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/main.dart';
import 'package:provider_demo/saving.dart';
import 'package:provider_demo/user_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          context.watch<UserProvider>().age,
        ),
         
      ),
      body: Column(
        
        children: [
          Text(context.watch<UserProvider>().name),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Saving(),));
      },child: Text("edit"),),
    );
  }
}
