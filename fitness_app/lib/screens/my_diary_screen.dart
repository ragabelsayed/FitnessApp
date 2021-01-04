import 'package:fitness_app/app_theme.dart';
import 'package:fitness_app/widgets/body_measurement.dart';
import 'package:fitness_app/widgets/glass_view.dart';
import 'package:fitness_app/widgets/meals_list_view.dart';
import 'package:fitness_app/widgets/mediterranean_diet_view.dart';

import 'package:fitness_app/widgets/title_view.dart';
import 'package:fitness_app/widgets/water_view.dart';
import 'package:flutter/material.dart';

class MyDiaryScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _MyDiaryScreenState createState() => _MyDiaryScreenState();
}

class _MyDiaryScreenState extends State<MyDiaryScreen>
    with SingleTickerProviderStateMixin {
  List<Widget> _listViews = [];
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _addAllListData();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _addAllListData() {
    const int count = 9;
    _listViews.add(
      TitleView(
        titleText: 'Mediterranean diet',
        subText: 'Details',
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 0,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );
    _listViews.add(
      MediterraneasnDietView(
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 1,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );
    _listViews.add(
      TitleView(
        titleText: 'Meals today',
        subText: 'Customize',
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 2,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );

    _listViews.add(
      MealsListView(
        mainScreenAnimationController: _animationController,
        mainScreenAnimation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 3,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );

    _listViews.add(
      TitleView(
        titleText: 'Body measurement',
        subText: 'Today',
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 4,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );

    _listViews.add(
      BodyMeasurementView(
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 5,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );

    _listViews.add(
      TitleView(
        titleText: 'Water',
        subText: 'Aque SmartBottle',
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 6,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );

    _listViews.add(
      WaterView(
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 7,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );

    _listViews.add(
      GlassView(
        animationController: _animationController,
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(
              (1 / count) * 8,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            _getMainListViewUI(),
          ],
        ),
      ),
    );
  }

  Widget _getMainListViewUI() {
    final _mediaQuery = MediaQuery.of(context);
    return FutureBuilder<bool>(
      future: _getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        } else {
          return ListView.builder(
            padding: EdgeInsets.only(
              top: AppBar().preferredSize.height + _mediaQuery.padding.top + 24,
              bottom: _mediaQuery.padding.bottom + 62,
            ),
            itemCount: _listViews.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              _animationController.forward();
              return _listViews[index];
            },
          );
        }
      },
    );
  }
}
