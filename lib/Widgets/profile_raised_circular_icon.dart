import 'package:flutter/material.dart';

class RaisedCircularIcon extends StatelessWidget {
  const RaisedCircularIcon(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onPressed(),
      child: Material(
        elevation: 2,
        shape: CircleBorder(),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Transform.translate(
            offset: icon == Icons.arrow_back_ios ? Offset(2, 0) : Offset(0, 0),
            child: Icon(icon),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFF9D31).withOpacity(0.95),
          ),
        ),
      ),
    );
  }
}
