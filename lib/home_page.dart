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
        child: Column(
          children: [
            Container(
                height: 130,
                width: 130,
                margin: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(212, 209, 209, 1),
                    borderRadius: BorderRadius.all(Radius.circular(100)))),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text('Today is Activity',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.upload_file_outlined),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text('12 news assignments uploaded'),
                ),
              ],
            )
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
