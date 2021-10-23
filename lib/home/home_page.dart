import 'package:flutter/material.dart';
import 'package:inherited_widget/home/drawer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const DrawerPage(),
      body: Container(),
    );
  }
}
