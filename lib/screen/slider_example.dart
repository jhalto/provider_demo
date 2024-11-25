import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/slider_provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
              min: 0,
              max: 1,
              value:value.value ,
              onChanged: (val) {

                value.setValue(val);

              },);
          },),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Text("${value.value}");
          },),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(child: Container(
                    color: Colors.red.withOpacity(value.value),
                  )),
                  Expanded(child: Container(
                    color: Colors.green.withOpacity(value.value),
                  )),
                ],
              ),
            );
          },)


        ],
      ),
    );
  }
}
