import 'package:flutter/material.dart';
import 'package:task_monitor_flutter/view/Account.dart';
import 'package:task_monitor_flutter/view/Statistics.dart';
import 'package:task_monitor_flutter/view/TimeLine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Monitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeLine _timeLine;
  Statistics _statistics;
  Account _account;

  int _selectedIndex = 0;

  void _constructWidgets() {
    _timeLine = TimeLine();
    _statistics = Statistics();
    _account = Account();
  }

  @override
  Widget build(BuildContext context) {
    _constructWidgets();
    return Scaffold(
      body: _buildWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            title: Text('Timeline'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text('Statistics'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildWidget() {
    Widget widget;
    switch (_selectedIndex) {
      case 0:
        widget = _timeLine;
        break;
      case 1:
        widget = _statistics;
        break;
      case 2:
        widget = _account;
        break;
    }
    return widget;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
