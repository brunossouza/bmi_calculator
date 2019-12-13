import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  final Function onPress;

  const ReusableCard({@required this.bgColor, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: bgColor,
        ),
        child: child,
      ),
    );
  }
}
