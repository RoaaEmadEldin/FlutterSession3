import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> users = ["User 1", "User 2", "User 3", "User 4"];
    List<Color> colors = [Colors.red, Colors.yellow, Colors.green, Colors.blue];
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text("List View Demo"),
      ),
      body: ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) => Container(
          color: colors[index],
          child: ListTile(
            leading: const Icon(Icons.account_box_rounded),
            title: Text(users[index]),
          ),
        ),
        separatorBuilder: (context, index) => Container(
          color: Colors.white,
          height: 20,
        ),
      ),
    );
  }
}
