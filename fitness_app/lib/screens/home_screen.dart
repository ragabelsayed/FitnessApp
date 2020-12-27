import 'package:fitness_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFitness'),
      ),
      drawer: CustomeDrawer(),
      body: Container(
        child: Text('Home ....'),
      ),
    );
  }
}
