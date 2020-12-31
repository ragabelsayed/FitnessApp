import 'package:flutter/material.dart';

class MealsListView extends StatefulWidget {
  final AnimationController mainSctreenAnimationController;
  final Animation mainSctreenAnimation;
  MealsListView(
      {this.mainSctreenAnimationController, this.mainSctreenAnimation});

  @override
  _MealsListViewState createState() => _MealsListViewState();
}

class _MealsListViewState extends State<MealsListView>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: double.infinity,
      child: Text('fmsnlvnlsn;'),
    );
  }
}

class MealsView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;
  MealsView({this.animationController, this.animation});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
