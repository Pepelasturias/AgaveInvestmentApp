import 'package:flutter/material.dart';

class InvestContainer extends StatelessWidget {
  InvestContainer({
    Key key,
    @required this.child,
  }) : super(key: key);

  static const buttonColor = Color(0xFF1CD64C);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: buttonColor,
      ),
      child: child,
    );
  }
}
