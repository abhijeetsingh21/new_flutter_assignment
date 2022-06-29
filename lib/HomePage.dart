import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var color = Colors.white;

  bool swap = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Development Assignment',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.swap_horiz),
            onPressed: () {
              setState(() {
                swap =! swap;
              });
              
              
            },
          ),
          backgroundColor: color,
          body: Container(
            child: swap ? Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.purple),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.orange),
                ),
              ],
              
            ): Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.orange),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.purple),
                ),
              ],
            ) ,
            
          ),
        ),
      ),
    );
  }
}
