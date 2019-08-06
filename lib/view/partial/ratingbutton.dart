import 'package:flutter/material.dart';

class RatingButton extends StatefulWidget {
  final int ratingCount;
  final dynamic starColor;

  RatingButton({
    this.ratingCount,
    this.starColor,
  });
  @override
  _RatingButtonState createState() => _RatingButtonState();
}

class _RatingButtonState extends State<RatingButton> {
  @override
  Widget build(BuildContext context) {
    List<Widget> iconWidgets = [];
    for (var i = 0; i < widget.ratingCount; i++) {
      iconWidgets.add(
        Icon(
          Icons.star,
          color: widget.starColor,
        ),
      );
    }

    return Row(
      children: iconWidgets,
    );
  }
}
