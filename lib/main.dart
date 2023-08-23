import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String data = "ini test";

  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
         child: Container(
          margin: const EdgeInsets.only(top: 200),
          padding: const EdgeInsets.all(50),
          child: Column(children: [
          FlutterLogo(),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Username', 
              icon: const Icon(Icons.person)
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Password', 
              icon: const Icon(Icons.password_outlined)
            ),
          ),
          ElevatedButton(child: Text("Login"),onPressed: (){
            setState(() {
            data = "berubah"; 
            });
          },),

          
         ]),
         )
        ),
      ),
    );
  }
}
