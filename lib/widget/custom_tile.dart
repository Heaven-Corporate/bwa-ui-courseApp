import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final _number;
  final _title;
  final _time;

  const CustomTile(this._number, this._title, this._time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Text(
        _number,
        style: TextStyle(
          color: Color(0xffe4e7f4),
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      title: Text(
        _title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      subtitle: Text(_time),
      trailing: MaterialButton(
        elevation: 0,
        padding: EdgeInsets.all(7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0XFF49cc96),
        minWidth: 30,
        onPressed: () {},
        child: Icon(
          Icons.keyboard_arrow_right_rounded,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
