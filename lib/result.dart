import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text("you did it!"),
          onPressed: () => print("finished...!!"),
        ),
      ),
    );
  }
}
