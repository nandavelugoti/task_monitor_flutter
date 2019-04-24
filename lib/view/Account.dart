import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<String> _accountOptions = ["Profile", "Settings", "Help", "About"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _accountOptions.map(_buildRow).toList(),
    );
  }

  Widget _buildRow(String title) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        title: new Text(title),
        onTap: () {},
      ),
    );
  }
}
