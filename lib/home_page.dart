// ignore_for_file: avoid_unnecessary_containers

import 'package:card/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal'),
        actions: [
          Switch(
              value: AppController.instance.isDartTheme,
              onChanged: (value) {
                setState(() {
                  AppController.instance.changeTheme();
                });
              }),
        ],
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 165, 164, 164),
                    borderRadius: BorderRadius.all(Radius.circular(100)))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}
