// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TelaHome extends StatelessWidget {
  final _stepFormController = PageController();

  final _pagesList = [
    const Text('pagina1'),
    const Text('pagina2'),
    const Text('pagina3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: PageView.builder(
            controller: _stepFormController,
            itemBuilder: (BuildContext context, int index) {
              return _pagesList[index];
            }));
  }
}
