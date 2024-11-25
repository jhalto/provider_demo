import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/home.dart';
import 'package:provider_demo/user_provider.dart';

class Saving extends StatefulWidget {
  const Saving({super.key});

  @override
  State<Saving> createState() => _SavingState();
}

class _SavingState extends State<Saving> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.watch<UserProvider>().name),
          TextField(
             controller: nameController,
          ),
          MaterialButton(onPressed: (){
            context.read<UserProvider>().changeName(newName: nameController.text);
          },child: Text("Save"),)
        ],
      ),
    );
  }
}
