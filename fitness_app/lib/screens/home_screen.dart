import 'package:fitness_app/app_theme.dart';
import 'package:fitness_app/models/tabIcon_data.dart';
import 'package:fitness_app/screens/my_diary_screen.dart';
import 'package:fitness_app/screens/training_screen.dart';
import 'package:fitness_app/widgets/bottom_bar_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  List<TabIconData> _tabIconsList = TabIconData.tabIconsList;
  Widget _tabBody = Container(color: AppTheme.background);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _tabBody = MyDiaryScreen(
      animationController: _animationController,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<bool> _getData() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder(
          future: _getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: [
                  _tabBody,
                  _bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Widget _bottomBar() {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        BottomBarView(
          tabIconeList: _tabIconsList,
          addClick: () {},
          changeIndex: (index) {
            if (index == 0 || index == 2) {
              _animationController.reverse().then((value) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  _tabBody = MyDiaryScreen(
                    animationController: _animationController,
                  );
                });
              });
            } else if (index == 1 || index == 3) {
              _animationController.reverse().then((value) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  _tabBody = TrainingScreen(
                    animationController: _animationController,
                  );
                });
              });
            }
          },
        ),
      ],
    );
  }
}
