import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter.dart';
import 'package:provider_demo/counter_provider.dart';
import 'package:provider_demo/home.dart';
import 'package:provider_demo/provider/count_provider.dart';
import 'package:provider_demo/provider/slider_provider.dart';
import 'package:provider_demo/screen/count_example.dart';
import 'package:provider_demo/screen/slider_example.dart';
import 'package:provider_demo/user_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider(),),
        ChangeNotifierProvider(create: (context) => CounterProvider(),),
        ChangeNotifierProvider(create: (context) => SliderProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SliderExample(),
      ),
    );
  }
}
