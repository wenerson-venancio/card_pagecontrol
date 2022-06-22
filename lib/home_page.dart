// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

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
                      color: Color.fromARGB(255, 29, 29, 29))),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // ignore: sort_child_properties_last
                  child: Icon(
                    Icons.add_task,
                    color: Color.fromARGB(255, 133, 210, 255),
                    size: 30,
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  margin: const EdgeInsets.all(14),
                  height: 60,
                  width: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.deepPurple),
                ),
                Container(
                  margin: const EdgeInsets.all(14),
                  height: 60,
                  width: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.deepPurple),
                )
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
