import 'package:flutter/material.dart';

class textfield_cardone extends StatelessWidget {
  final String title;

  const textfield_cardone({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
