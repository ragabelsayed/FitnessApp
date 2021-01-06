import 'package:fitness_app/app_theme.dart';
import 'package:fitness_app/widgets/title_view.dart';
import 'package:flutter/material.dart';

class TrainingScreen extends StatefulWidget {
  @override
  _TrainingScreenState createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  List<Widget> _listviews = [];
  DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _addAllListData();
  }

  void _addAllListData() {}

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<bool> _getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
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
    return FutureBuilder(
      future: _getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        } else {
          return ListView.builder(
            itemCount: _listviews.length,
            padding: EdgeInsets.only(
              top: AppBar().preferredSize.height + _mediaQuery.padding.top + 24,
              bottom: _mediaQuery.padding.bottom + 62,
            ),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              _animationController.forward();
              return _listviews[index];
            },
          );
        }
      },
    );
  }
}
