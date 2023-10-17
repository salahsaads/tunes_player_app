import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  Container1({required this.back});
  Color back;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 106,
      color: back,
    );
  }
}
